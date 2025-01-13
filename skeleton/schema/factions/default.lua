--- Attributes of the default faction.
-- @factions Default
--- A list of the current fields in the faction.
-- @realm shared
-- @table Configurations
-- @field name The name of the faction | **string**
-- @field desc The description of the faction | **string**
-- @field color The color representing the faction | **Color**
-- @field isDefault Whether the faction is set as default | **boolean**
-- @field models The models used by members of the faction | **table**
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
FACTION.name = "Default"
FACTION.desc = "The Default Faction."
FACTION.color = Color(51, 117, 232)
FACTION.isDefault = true
FACTION.models = {"models/player/Barney.mdl", "models/player/gman_high.mdl", "models/player/alyx.mdl"}
FACTION.pay = 500
FACTION.payTimer = 3600
FACTION.limit = 100
FACTION.oneCharOnly = false
FACTION.health = 100
FACTION.armor = 50
FACTION.scale = 1.0
FACTION.runSpeed = 1.5
FACTION.runSpeedMultiplier = true
FACTION.walkSpeed = 1.2
FACTION.walkSpeedMultiplier = true
FACTION.jumpPower = 1.5
FACTION.jumpPowerMultiplier = true
FACTION.bloodcolor = BLOOD_COLOR_RED
FACTION.bodyGroups = {
    ["Group1"] = 0,
    ["Group2"] = 1
}

FACTION_DEFAULT = FACTION.index