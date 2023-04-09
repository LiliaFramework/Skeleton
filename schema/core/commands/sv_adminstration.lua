-------------------------------------------------------------------------------------------------------------------------
nut.command.add("freezeallprops", {
    syntax = "",
    onRun = function(client, arguments)
        local uniqueID = client:GetUserGroup()

        if not UserGroups.adminRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        for k, v in pairs(ents.FindByClass("prop_physics")) do
            local physObj = v:GetPhysicsObject()

            if IsValid(physObj) then
                physObj:EnableMotion(false)
                physObj:Sleep()
            end
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("clearinv", {
    syntax = "<string name>",
    onRun = function(client, arguments)
        local uniqueID = client:GetUserGroup()

        if not UserGroups.uaRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        local target = nut.command.findPlayer(client, arguments[1])

        if IsValid(target) and target:getChar() then
            for k, v in pairs(target:getChar():getInv():getItems()) do
                v:remove()
            end

            client:notifyLocalized("resetInv", target:getChar():getName())
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("flaggive", {
    syntax = "<string name> [string flags]",
    onRun = function(client, arguments)
        local target = nut.command.findPlayer(client, arguments[1])
        local uniqueID = client:GetUserGroup()

        if not UserGroups.uaRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        if IsValid(target) and target:getChar() then
            local flags = arguments[2]

            if (flags == "l" or flags == "y" or flags == "b" or flags == "ybl" or flags == "lby" or flags == "byl") and not UserGroups.uaRanks[uniqueID] then
                client:notify("No permission!")

                return false
            end

            if not flags then
                local available = ""

                -- Aesthetics~~
                for k in SortedPairs(nut.flag.list) do
                    if not target:getChar():hasFlags(k) then
                        available = available .. k
                    end
                end

                return client:requestString("@flagGiveTitle", "@flagGiveDesc", function(text)
                    nut.command.run(client, "flaggive", {target:Name(), text})
                end, available)
            end

            target:getChar():giveFlags(flags)
            client:notifyLocalized("flagGive", client:Name(), target:Name(), flags)
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("flagtake", {
    adminOnly = true,
    syntax = "<string name> [string flags]",
    onRun = function(client, arguments)
        local target = nut.command.findPlayer(client, arguments[1])
        local uniqueID = client:GetUserGroup()

        if not UserGroups.uaRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        if IsValid(target) and target:getChar() then
            local flags = arguments[2]

            if not flags then
                return client:requestString("@flagTakeTitle", "@flagTakeDesc", function(text)
                    nut.command.run(client, "flagtake", {target:Name(), text})
                end, target:getChar():getFlags())
            end

            target:getChar():takeFlags(flags)
            client:notifyLocalized("flagTake", client:Name(), flags, target:Name())
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("flags", {
    adminOnly = true,
    syntax = "<string name>",
    onRun = function(client, arguments)
        local target = nut.command.findPlayer(client, arguments[1])
        local uniqueID = client:GetUserGroup()

        if not UserGroups.uaRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        if IsValid(target) and target:getChar() then
            client:notify("Their character flags are: '" .. target:getChar():getFlags() .. "'")
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("findallflags", {
    onRun = function(client, arguments)
        local uniqueID = client:GetUserGroup()

        if not UserGroups.founderRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        for k, v in pairs(player.GetHumans()) do
            client:ChatPrint(v:Name() .. " — " .. v:getChar():getFlags())
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("musicstopglobal", {
    onRun = function(client, arguments)
        local uniqueID = client:GetUserGroup()

        if not UserGroups.uaRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        for k, v in pairs(player.GetAll()) do
            v:ConCommand("wmcp_stop")
            client:notify("Music stopped for everyone.")
        end
    end
})

-------------------------------------------------------------------------------------------------------------------------
nut.command.add("clearchat", {
    adminOnly = true,
    onRun = function(client, arguments)
        local uniqueID = client:GetUserGroup()

        if not UserGroups.adminRanks[uniqueID] then
            client:notify("Your rank is not high enough to use this command.")

            return false
        end

        netstream.Start(player.GetAll(), "adminClearChat")
        nut.log.addRaw(client:GetName() .. " has cleared the chat.")
    end
})