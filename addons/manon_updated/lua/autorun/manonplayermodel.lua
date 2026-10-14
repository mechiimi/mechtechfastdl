player_manager.AddValidModel("Manon the Fox", "models/manon/manonplayermodel.mdl")

list.Set("PlayerOptionsModel", "Manon the Fox", "models/manon/manonplayermodel.mdl")

player_manager.AddValidHands("Manon the Fox", "models/manon/manonarms.mdl", 0, "00000000")

local Category = "Manon the Fox"

-- Friendly NPC (uses female citizen voice)
local NPC_Friendly = {
    Name = "Manon - Friendly",
    Class = "npc_citizen",
    Model = "models/manon/manonplayermodel.mdl",
    Health = "100",
    KeyValues = {
        citizentype = 4,
        SquadName = "ManonFriendly",
        additionalequipment = "weapon_pistol",
        ExpressionOverride = "happy",
        voice = "female01"  -- Sets female voice
    },
    Category = Category
}
list.Set("NPC", "npc_manon_f", NPC_Friendly)

-- Hostile NPC (uses Alyx voice profile)
local NPC_Hostile = {
    Name = "Manon - Hostile",
    Class = "npc_combine_s",
    Model = "models/manon/manonplayermodel.mdl",
    Health = "100",
    Numgrenades = "20",
    Squadname = "Enemies",
    KeyValues = {
        voice = "alyx"  -- Will play Alyx’s voice lines
    },
    Category = Category
}
list.Set("NPC", "npc_manon_h", NPC_Hostile)
