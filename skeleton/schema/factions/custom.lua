--[[--
    Whitelisted Faction exmaple.

    This is meant to exemplify a custom faction.
]]
-- @configurations Faction

--- Attributes of the custom faction.
-- @realm shared
-- @table FactionInfo
-- @field name The name of the faction | string.
-- @field desc The description of the faction | string.
-- @field color The color representing the faction | Color.
-- @field isDefault Whether the faction is set as default | boolean.
-- @field models The models used by members of the faction | table.
-- @field weapons The weapons available to members of the faction | table.

FACTION.name = "Custom Faction"
FACTION.desc = "A Custom Faction!"
FACTION.color = Color(255, 56, 252)
FACTION.isDefault = false
FACTION.models = {
    "models/Humans/Group02/male_07.mdl",
    "models/Humans/Group02/male_07.mdl",
    "models/Humans/Group02/male_07.mdl",
    "models/Humans/Group02/male_07.mdl",
    "models/Humans/Group02/male_07.mdl"
}
FACTION.weapons = {
    "weapon_physgun",
    "gmod_tool"
}
FACTION_CUSTOM = FACTION.index
