lia.config.CarRagdoll = true
lia.config.HeadShotDamage = 2
lia.config.TimeUntilDroppedSWEPRemoved = 15
lia.config.PlayerSpawnVehicleDelay = 30
lia.config.NPCsDropWeapons = true
lia.config.DrawEntityShadows = true
lia.config.WalkSpeed = 130
lia.config.RunSpeed = 235
lia.config.CharacterSwitchCooldownTimer = 5
lia.config.CharacterSwitchCooldown = true
lia.config.AutoRegen = false
lia.config.HealingAmount = 10
lia.config.HealingTimer = 60
lia.config.PermaClass = true
lia.config.MapCleanerEnabled = true
lia.config.ItemCleanupTime = 7200
lia.config.MapCleanupTime = 21600
lia.config.DevServerIP = "45.61.170.66"
lia.config.DevServerPort = "27270"
lia.config.WalkRatio = 0.5
lia.config.SalaryOverride = true
lia.config.SalaryInterval = 300
lia.config.TimeToEnterVehicle = 1
lia.config.JumpCooldown = 0.8
lia.config.MaxAttributes = 30
lia.config.AllowExistNames = true
lia.config.FactionBroadcastEnabled = true
lia.config.AdvertisementEnabled = true
lia.config.AdvertisementPrice = 25
lia.config.DefaultGamemodeName = "Lilia - Skeleton"
lia.config.Color = Color(75, 119, 190)
lia.config.DarkTheme = true
lia.config.Font = "Arial"
lia.config.GenericFont = "Segoe UI"
lia.config.WhitelistEnabled = false
lia.config.MoneyModel = "models/props_lab/box01a.mdl"
lia.config.AutoWorkshopDownloader = false
lia.config.MaxCharacters = 5
lia.config.invW = 6
lia.config.invH = 4
lia.config.DefaultMoney = 0
lia.config.AmericanDates = false
lia.config.AmericanTimeStamp = false
lia.config.CurrencyPluralName = "Dollars"
lia.currency.CurrencySingularName = "Dollar"
lia.currency.CurrencySymbol = "$"
lia.config.UnLoadedPlugins = {
    ammosave = false,
    bodygrouper = false,
    chatbox = false,
    cmenu = false,
    corefiles = false,
    crashscreen = false,
    doors = false,
    f1menu = false,
    flashlight = false,
    gridinventory = false,
    interactionmenu = false,
    mainmenu = false,
    observer = false,
    pac = false,
    permakill = false,
    radio = false,
    raiseweapons = false,
    recognition = false,
    saveitems = false,
    scoreboard = false,
    serverblacklister = false,
    skills = false,
    spawnmenuitems = false,
    spawns = false,
    storage = false,
    tying = false,
    vendor = false,
    weaponselector = false,
    whitelist = false,
}

lia.config.LoseWeapononDeathNPC = false
lia.config.LoseWeapononDeathHuman = false
lia.config.BranchWarning = true
lia.config.VersionEnabled = true
lia.config.version = "1.0"
lia.config.AllowVoice = lia.config.AllowVoice or true
lia.config.CharAttrib = {"buttons/button16.wav", 30, 255}
lia.config.MaxAttributes = lia.config.MaxAttributes or 30
lia.config.ThirdPersonEnabled = true
lia.config.CrosshairEnabled = false
lia.config.BarsDisabled = false
lia.config.AmmoDrawEnabled = true
lia.config.Vignette = true
lia.config.CustomUIEnabled = true
lia.config.TalkRanges = {
    ["Whispering"] = 120,
    ["Talking"] = 300,
    ["Yelling"] = 600,
}

lia.config.EntitiesToBeRemoved = {
    ["env_fire"] = true,
    ["trigger_hurt"] = true,
    ["prop_ragdoll"] = true,
    ["prop_physics"] = true,
    ["spotlight_end"] = true,
    ["light"] = true,
    ["point_spotlight"] = true,
    ["beam"] = true,
    ["env_sprite"] = true,
    ["light_spot"] = true,
    ["func_tracktrain"] = true,
    ["point_template"] = true,
}

lia.config.PlayerModelTposingFixer = {
    ["path/to/model.mdl"] = "player",
    ["path/to/model.mdl"] = "player",
    ["path/to/model.mdl"] = "player",
    ["path/to/model.mdl"] = "player",
}

lia.config.DefaultStaff = {}
lia.config.PhysGunMoveRestrictedEntityList = {"prop_door_rotating", "lia_vendor",}
lia.config.RemoverBlockedEntities = {"ent_chess_board", "ent_draughts_board", "rock_big", "rock_medium", "rock_small ", "lia_bodygroupcloset", "lia_craftingtable", "carvendor", "sh_teller", "permaweapons", "stockbook", "lia_stash", "valet", "lia_vendor", "telephone", "lia_salary", "spruce", "pinetree", "oaktree", "beechtree", "npc_import_drug", "cardealer", "delivery_crate", "npcdelivery", "housing_npc", "jailer_npc", "sergeant_dornan", "npctaxi",}
lia.config.DuplicatorBlackList = {"lia_storage", "lia_money"}
lia.config.RestrictedVehicles = {"sim_fphys_chaos126p", "sim_fphys_hedgehog", "sim_fphys_ratmobile", "sim_fphys_tank2", "sim_fphys_tank", "sim_fphys_conscriptapc_armed", "sim_fphys_combineapc_armed", "sim_fphys_jeep_armed2", "sim_fphys_jeep_armed", "sim_fphys_tank3", "sim_fphys_v8elite_armed2", "sim_fphys_v8elite_armed", "sim_fphys_tank4", "sim_fphys_couch", "sim_fphys_couch", "sim_fphys_tank_sdkfz_halftrack", "sim_fphys_opel_blitz_ww2", "gred_simfphys_panzerivd", "gred_simfphys_panzerivf1", "gred_simfphys_panzerivf2", "sim_fphys_pwavia", "sim_fphys_pwgaz52", "sim_fphys_pwhatchback", "sim_fphys_pwhatchback", "sim_fphys_pwmoskvich", "sim_fphys_pwtrabant", "sim_fphys_pwtrabant02", "sim_fphys_pwvan", "sim_fphys_pwvolga", "sim_fphys_pwzaz", "sim_fphys_conscriptapc", "sim_fphys_combineapc", "sim_fphys_jeep", "sim_fphys_jalopy", "sim_fphys_v8elite", "sim_fphys_van", "sim_fphys_chaos126p", "sim_fphys_hedgehog", "sim_fphys_ratmobile", "sim_fphys_tank2", "sim_fphys_tank", "sim_fphys_conscriptapc_armed", "sim_fphys_combineapc_armed", "sim_fphys_jeep_armed2", "sim_fphys_jeep_armed", "sim_fphys_tank3", "sim_fphys_v8elite_armed2", "sim_fphys_v8elite_armed", "sim_fphys_tank4", "sim_fphys_couch", "sim_fphys_dukes", "sim_fphys_tank_sdkfz_halftrack", "sim_fphys_opel_blitz_ww2", "gred_simfphys_panzerivd", "gred_simfphys_panzerivf1", "gred_simfphys_panzerivf2", "sim_fphys_pwavia", "sim_fphys_pwgaz52", "sim_fphys_pwhatchback", "sim_fphys_pwliaz", "sim_fphys_pwmoskvich", "sim_fphys_pwtrabant", "sim_fphys_pwtrabant02", "sim_fphys_pwvan", "sim_fphys_pwvolga", "sim_fphys_pwzaz", "sim_fphys_conscriptapc", "sim_fphys_combineapc", "sim_fphys_jeep", "sim_fphys_jalopy", "sim_fphys_v8elite", "sim_fphys_van", "gred_simfphys_panzerivd", "avx_t-34-85", "sim_fphys_chaos126p", "sim_fphys_hedgehog", "sim_fphys_ratmobile", "sim_fphys_tank2", "sim_fphys_tank", "sim_fphys_conscriptapc_armed", "sim_fphys_combineapc_armed", "sim_fphys_jeep_armed2", "sim_fphys_jeep_armed", "sim_fphys_tank3", "sim_fphys_v8elite_armed2", "sim_fphys_v8elite_armed", "sim_fphys_tank4", "sim_fphys_couch", "sim_fphys_dukes", "sim_fphys_conscriptapc", "sim_fphys_combineapc", "sim_fphys_jeep", "sim_fphys_jalopy", "sim_fphys_v8elite", "sim_fphys_van", "gred_panzerivd", "gred_simfphys_panzerivf1", "gred_simfphys_panzerivf2", "T34rp", "t34_76rp", "T34_85rp", "T34", "t34_76", "sdkfz_234", "ps_sdkfz_251_armed", "gb_bomb_cbu", "gb_bomb_1000gp", "gb_bomb_2000gp", "gb_bomb_fab250", "gb_bomb_gbu12", "gb_bomb_250gp", "gb_bomb_500gp", "gb_bomb_gbu38", "gb_bomb_mk77", "gb_bomb_mk82", "gb_bomb_sc100", "gb_bomb_sc1000", "gb_bomb_sc250", "gb_bomb_sc500", "gb_rocket_hvar", "gb_rocket_hydra", "gb_rocket_nebel", "gb_rocket_rp3", "gb_rocket_v1", "gred_ammobox", "sdkfz", "sdkfz2w", "sim_fphys_tank2", "Airboat", "Jeep", "Pod", "sim_fphys_chaos126p", "sim_fphys_hedgehog", "sim_fphys_ratmobile", "sim_fphys_tank2", "sim_fphys_tank", "sim_fphys_conscriptapc_armed", "sim_fphys_combineapc_armed", "sim_fphys_jeep_armed2", "sim_fphys_jeep_armed", "sim_fphys_tank3", "sim_fphys_v8elite_armed2", "sim_fphys_v8elite_armed", "sim_fphys_tank4", "sim_fphys_couch", "sim_fphys_dukes", "sim_fphys_tank_sdkfz_halftrack", "sim_fphys_opel_blitz_ww2", "gred_simfphys_panzerivd", "gred_simfphys_panzerivf1", "gred_simfphys_panzerivf2", "sim_fphys_pwavia", "sim_fphys_pwgaz52", "sim_fphys_pwhatchback", "sim_fphys_pwhatchback", "sim_fphys_pwmoskvich", "sim_fphys_pwtrabant", "sim_fphys_pwtrabant02", "sim_fphys_pwvan", "sim_fphys_pwvolga", "sim_fphys_pwzaz", "sim_fphys_conscriptapc", "sim_fphys_conscriptapc", "sim_fphys_jeep", "sim_fphys_jalopy ", "sim_fphys_v8elite", "sim_fphys_van", "T34_85"}
lia.config.BlockedCollideEntities = {"lia_item", "lia_money"}