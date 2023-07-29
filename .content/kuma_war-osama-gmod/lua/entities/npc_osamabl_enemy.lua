
AddCSLuaFile()

if !ConVarExists( "npcg_cmbelite_ar2altdrop" ) then CreateConVar( "npcg_cmbelite_ar2altdrop", "0", { FCVAR_REPLICATED, FCVAR_ARCHIVE } ) end
if !ConVarExists( "npcg_randomizer_cmb" ) then CreateConVar( "npcg_randomizer_cmb", "1", { FCVAR_REPLICATED, FCVAR_ARCHIVE } ) end
if !ConVarExists( "npcg_wakeradius_cmb" ) then CreateConVar( "npcg_wakeradius_cmb", "200", { FCVAR_REPLICATED, FCVAR_ARCHIVE } ) end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Name"
ENT.Author = "V92"
ENT.Information = "NPC, Osama bin Laden, Friendly"
ENT.Category = "NPCG: Other"

ENT.Spawnable = false
ENT.AdminOnly = false

if CLIENT then return false end

local WeaponTable = { "ins_aks74u_npc" }

function ENT:Initialize()

	if GetConVarNumber("npcg_cmbelite_ar2altdrop") != 0 then self.ar2AltDrop = 393732 else self.ar2AltDrop = 0 end
	if GetConVarNumber("npcg_ignorepushing") != 0 then self.pushNum = 16384 else self.pushNum = 0 end
	if ConVarExists("npcg_weapondrop") and GetConVarNumber("npcg_weapondrop") != 0 then self.weaponNum = 8192 else self.weaponNum = 0 end
	if GetConVarNumber("npcg_fade_corpse") != 0 then self.fadeNum = 512 else self.fadeNum = 0 end
	if GetConVarNumber("npcg_longvision") != 0 then self.longNum = 256 else self.longNum = 0 end

	self.kvNum = 0

	self:SetNoDraw( true )
	self:DrawShadow( false )
	self:SetSolid( SOLID_NONE )

	self.ent1 = ents.Create("npc_combine_s")
	self.ent1:SetPos( self:GetPos( ) )
	self.ent1:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )
	self.ent1:SetKeyValue( "citizentype", 4 )
	self.ent1:SetModel("models/v92/kuma/characters/osama/npc_combine.mdl" )
	self.ent1:SetBodygroup( 2 , 1 )
	self.ent1:SetBodygroup( 3 , 1 )
	self.ent1:SetColor( Color( 255 , 100 , 100 , 255 ) ) 
	self.ent1:SetRenderMode( RENDERMODE_TRANSCOLOR )
	self.ent1:SetKeyValue( "DontPickupWeapons", GetConVarNumber("npcg_pickupguns") )
	self.ent1:SetKeyValue( "additionalequipment", table.Random( WeaponTable ) )
	self.ent1:SetKeyValue( "Expression Type", "Random" )
	self.ent1:SetKeyValue( "spawnflags", tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
	self.ent1:SetKeyValue( "NumGrenades", GetConVarNumber("npcg_energyballcount") )
	self.ent1:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_cmb" ) )
	self.ent1:SetKeyValue( "wakeradius", GetConVarNumber( "npcg_wakeradius_human" ) )
	self.ent1:Spawn( )
	self.ent1:Activate( )
	self.ent1:SetSchedule( SCHED_IDLE_WANDER )

	if GetConVarNumber( "npcg_squad_combine" ) != 0 then
		self.ent1:SetKeyValue( "SquadName", "Taliban" )
	end

	if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then 
		self.ent1:SetKeyValue( "wakesquad", 1 ) 
	end

	if GetConVarNumber("npcg_combine_tacticalvar") > 1 then
		self.ent1:SetKeyValue( "tacticalvariant", 2 )
	elseif GetConVarNumber("npcg_combine_tacticalvar") == 1 then
		self.ent1:SetKeyValue( "tacticalvariant", 1 )
	else
		self.ent1:SetKeyValue( "tacticalvariant", 0 )
	end

	if GetConVarNumber("npcg_accuracy_combine") >= 4 then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
	elseif GetConVarNumber("npcg_accuracy_combine") == 3 then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
	elseif GetConVarNumber("npcg_accuracy_combine") == 2 then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
	elseif GetConVarNumber("npcg_accuracy_combine") == 1 then
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
	else
		self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR) 
	end

	-- undo.Create( "Osama (Friendly)" )
		-- undo.AddEntity( self )
		-- undo.AddEntity( self.ent1 )
		-- undo.SetCustomUndoText( "Undone Osama (Friendly)" )
		-- undo.SetPlayer( self.Owner )
	-- undo.Finish( )

end

function ENT:OnRemove( )

	if IsValid( self ) then SafeRemoveEntity( self ) end
	if IsValid( self.ent1 ) then SafeRemoveEntity( self.ent1 ) end

end
