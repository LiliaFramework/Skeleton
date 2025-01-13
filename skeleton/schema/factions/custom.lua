﻿--- Attributes of the custom faction.
-- @factions Custom

--- A list of the current fields in the faction.
-- @realm shared
-- @table Configurations
-- @field name The name of the faction | **string**
-- @field desc The description of the faction | **string**
-- @field color The color representing the faction | **Color**
-- @field isDefault Whether the faction is set as default | **boolean**
-- @field models The models used by members of the faction | **table**
-- @field weapons The weapons available to members of the faction | **table**
-- @field pay The payment amount associated with the faction | **integer**
-- @field payTimer The timer or schedule for payments | **integer**
-- @field limit The limit of players in this faction at a given time | **integer**
-- @field oneCharOnly Whether a player can have only one character in the faction | **boolean**
-- @field health The default health of players in the faction | **integer**
-- @field armor The default armor value of players in the faction | **integer**
-- @field scale The scale affecting the size of the player model | **float**
-- @field runSpeed The default running speed of players in the faction | **float**
-- @field runSpeedMultiplier Whether to multiply runSpeed by the default speed | **boolean**
-- @field walkSpeed The default walking speed of players in the faction | **float**
-- @field walkSpeedMultiplier Whether to multiply walkSpeed by the default walk speed | **boolean**
-- @field jumpPower The default jump power of players in the faction | **float**
-- @field jumpPowerMultiplier Whether to multiply jumpPower by the default jump power | **boolean**
-- @field bloodcolor The blood color of players in the faction | **integer**
-- @field bodyGroups The bodygroups for player models upon spawn | **table**
-- @field index The Unique ID of the faction | **integer**
FACTION.name = "Custom Faction"
FACTION.desc = "A Custom Faction!"
FACTION.color = Color(255, 56, 252)
FACTION.isDefault = false
FACTION.models = {"models/player/Barney.mdl", "models/player/gman_high.mdl", "models/player/alyx.mdl"}
FACTION.weapons = {"weapon_physgun", "gmod_tool"}
FACTION.pay = 1000
FACTION.payTimer = 1800
FACTION.limit = 50
FACTION.oneCharOnly = true
FACTION.health = 100
FACTION.armor = 50
FACTION.scale = 1.0
FACTION.runSpeed = 300
FACTION.runSpeedMultiplier = false
FACTION.walkSpeed = 150
FACTION.walkSpeedMultiplier = false
FACTION.jumpPower = 200
FACTION.jumpPowerMultiplier = false
FACTION.bloodcolor = BLOOD_COLOR_YELLOW
FACTION.bodyGroups = {
    ["Group1"] = 1,
    ["Group2"] = 2
}

FACTION_CUSTOM = FACTION.index
