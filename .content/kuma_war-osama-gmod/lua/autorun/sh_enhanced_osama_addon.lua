
AddCSLuaFile()

-------------------------------------------------------
-- Enhanced Osama bin Laden Addon
-- Model @ Kuma Games
-- Hex/Player/NPC/C_Arms/Enhance @ V92
-------------------------------------------------------
-- Let's get moving...
-------------------------------------------------------
-------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
-- Setting up Workshop Auto-DL just in case...
-------------------------------------------------------
-------------------------------------------------------

if SERVER then 

	resource.AddWorkshop("136077464") -- NPCG
	resource.AddWorkshop("582213602") -- Enhanced Osama

end

-------------------------------------------------------
-------------------------------------------------------
-- Player Shit
-------------------------------------------------------
-------------------------------------------------------

player_manager.AddValidModel("OsamaEnhanced", "models/v92/kuma/characters/osama/player.mdl" )
player_manager.AddValidHands( "OsamaEnhanced", "models/v92/kuma/characters/osama/arms.mdl", 1, "00000000" )
list.Set( "PlayerOptionsAnimations", "OsamaEnhanced", { "menu_combine" } )

-------------------------------------------------------
-------------------------------------------------------
-- NPC Shit
-------------------------------------------------------
-------------------------------------------------------

local Category = "NPCG: Other"

local OsamaF = { Name = "Osama (Friendly)", Class = "npc_osamabl_friendly", Category = Category }
list.Set( "NPC", "npc_osamabl_friendly", OsamaF )

local OsamaE = { Name = "Osama (Enemy)", Class = "npc_osamabl_enemy", Category = Category }
list.Set( "NPC", "npc_osamabl_enemy", OsamaE )
