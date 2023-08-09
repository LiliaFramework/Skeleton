function MODULE:PlayerInitialSpawn(ply)
    ply:SetVar("playerClassModuleLoaded", false)
end

function MODULE:PlayerLoadedChar(client)
    client:SetVar("playerClassModuleLoaded", false)
end

function MODULE:CharacterLoaded(id)
    local character = nut.char.loaded[id]

    if character then
        local client = character:getPlayer()

        if IsValid(client) then
            timer.Simple(1, function()
                client:SetVar("playerClassModuleLoaded", true)
            end)
        end
    end
end

--Respawn player when they change class, you may disable this by commenting it out
function MODULE:OnPlayerJoinClass(client)
    client:KillSilent()

    --Timer done to avoid bugs with viewmodel camera
    timer.Simple(0.2, function()
        client:Spawn()
    end)
end

function MODULE:PlayerSpawn(client)
    --Run short timer to give var to read correctly when change character, probably unneeded now but I left it in just to be sure
    timer.Simple(0.1, function()
        if client:Team() and (client:Team() ~= 0) then
            local classLoaded = client:GetVar("playerClassModuleLoaded", false)

            if classLoaded == true then
                self:doLoadout(client)
            else
                timer.Simple(0.5, function()
                    self:doLoadout(client)
                end)
            end
        end
    end)
end