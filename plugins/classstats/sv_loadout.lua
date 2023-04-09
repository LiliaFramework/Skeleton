function PLUGIN:doLoadout(client)
    local char = client:getChar()

    if char then
        local charClass = char:getClass()
        local class = nut.class.list[charClass]
        if not class then return end
        if class.None then return end

        if class.armor then
            client:SetArmor(class.armor)
        else
            client:SetArmor(0)
        end

        if class.scale then
            local scaleViewFix = class.scale
            local scaleViewFixOffset = Vector(0, 0, 64)
            local scaleViewFixOffsetDuck = Vector(0, 0, 28)
            client:SetViewOffset(scaleViewFixOffset * class.scale)
            client:SetViewOffsetDucked(scaleViewFixOffsetDuck * class.scale)
            client:SetModelScale(scaleViewFix)
        else
            client:SetViewOffset(Vector(0, 0, 64))
            client:SetViewOffsetDucked(Vector(0, 0, 28))
            client:SetModelScale(1)
        end

        if class.runSpeed then
            if class.runSpeedMultiplier then
                client:SetRunSpeed(math.Round(nut.config.get("runSpeed") * class.runSpeed))
            else
                client:SetRunSpeed(class.runSpeed)
            end
        end

        if class.walkSpeed then
            if class.walkSpeedMultiplier then
                client:SetWalkSpeed(math.Round(nut.config.get("walkSpeed") * class.walkSpeed))
            else
                client:SetWalkSpeed(class.walkSpeed)
            end
        end

        if class.jumpPower then
            if class.jumpPowerMultiplier then
                client:SetJumpPower(math.Round(160 * class.jumpPower))
            else
                client:SetJumpPower(class.jumpPower)
            end
        else
            client:SetJumpPower(160)
        end

        --Blood enums here https://wiki.garrysmod.com/page/Enums/BLOOD_COLOR
        if class.bloodcolor then
            client:SetBloodColor(class.bloodcolor)
        else
            client:SetBloodColor(BLOOD_COLOR_RED) --This is the index for regular red blood
        end

        -- Requires Parakeet's pills addon
        if (class.pill and pk_pills) and not client.pillTransforming then
            jlib.Announce(client, Color(255, 0, 0), "[NOTICE] ", Color(255, 255, 255), "You will fully spawn in your class in 9 seconds . . .")
            local pillChar = client:getChar()
            client.pillTransforming = true

            timer.Simple(9, function()
                if IsValid(client) and client:Alive() and client:getChar() == pillChar then
                    client:SetPos(client:GetPos() + Vector(0, 0, 5)) -- Anti stuck for certain pills
                    pk_pills.apply(client, class.pill, "lock-life")
                    client.pillTransforming = false
                end
            end)
        end

        -- health override
        if class.health then
            client:SetMaxHealth(class.health)
            client:SetHealth(class.health)
        end

        if class.verify and SERVER and client:getChar():getFaction() ~= nut.faction.indices[class.faction].index then
            jlib.TransferFaction(client, class.faction) -- Transfer the player to the parent faction of class
        end

        -- Radiation immunity
        if class.radImmune then
            client.isImmune = true
        else
            client.isImmune = false
        end
    end
end