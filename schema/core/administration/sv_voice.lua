GM = GM or GAMEMODE

function GM:PlayerCanHearPlayersVoice(listener, speaker)
    local distance = 600 * 600
    local allowVoice = lia.config.get("allowVoice")

    if allowVoice then
        if listener:GetPos():DistToSqr(speaker:GetPos()) < distance then
            return true, true
        else
            if hook.Run("PlayerCanHearPlayersVoiceStandingTelephone", listener, speaker) then return true end
            if hook.Run("PlayerCanHearPlayersVoicePlacedRadios", listener, speaker) then return true end
            if hook.Run("PlayerCanHearPlayersVoiceHook3DVoice", listener, speaker) then return true end
            if hook.Run("PlayerCanHearPlayersVoiceHookTying", listener, speaker) then return true end
            if hook.Run("PlayerCanHearPlayersVoiceHookRadio", listener, speaker) then return true end
            if hook.Run("PlayerCanHearPlayersVoiceTalkModes", listener, speaker) then return true end
        end
    end

    return false, false
end