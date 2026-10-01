-------------------------------------------------- ENTITY --------------------------------------------------
GET_ENTITY_HEADING = function(entity) return Natives.InvokeFloat(0xE83D4F9BA2A38914, entity) end

GET_OFFSET_FROM_ENTITY = function(entity, x, y, z) return Natives.InvokeV3(0x1899F328B0E12848, entity, x + 0.0, y + 0.0, z + 0.0) end

GET_ENTITY_COORDS = function(entity) return Natives.InvokeV3(0x3FEF770D40960D5A, entity) end

GET_ENTITY_MODEL = function(entity) return Natives.InvokeInt(0x9F47B058362C84B5, entity) end

HAS_CONTROL_OF_ENTITY = function(entity) return Natives.InvokeBool(0x01BF60A500E28887, entity) end

DELETE_ENTITY = function(ptr) Natives.InvokeVoid(0xAE3CBE5BF394C9C9, ptr) end

REQUEST_CONTROL_OF_ENTITY = function(entity) Natives.InvokeVoid(0xB69317BF5E782347, entity) end

ATTACH_ENTITY_TO_ENTITY_PHYSICALLY = function(e1, e2, x, y, z, force) Natives.InvokeVoid(0xC3675780C92F90F9, e1, e2, -1, -1, x + 0.0, y + 0.0, z + 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, force + 0.0, true, true, true, true, 0) end

ATTACH_ENTITY_TO_ENTITY = function(e1, e2, x, y, z) Natives.InvokeVoid(0x6B9BBD38AB0796DF, e1, e2, -1, x + 0.0, y + 0.0, z + 0.0, 0.0, 0.0, 0.0, true, true, true, false, 0, true, 0) end

DETACH_ENTITY = function(entity) Natives.InvokeVoid(0x961AC54BF0613F5D, entity, true, true) end

FREEZE_ENTITY = function(entity, bool) Natives.InvokeVoid(0x428CA6DBD1094446, entity, bool) end

BREAK_OBJECT = function(object) Natives.InvokeVoid(0xE7E4C198B0185900, object, true, true) end

SET_ENTITY_ROT = function(entity, pitch, roll, yaw) Natives.InvokeVoid(0x8524A8B0171D5E07, entity, pitch + 0.0, roll + 0.0, yaw + 0.0, 2) end

SET_ENTITY_ALPHA = function(entity, alpha) Natives.InvokeVoid(0x44A0870B7E92D7C0, entity, alpha, false) end

SET_ENTITY_VELOCITY = function(entity, x, y, z) Natives.InvokeVoid(0x1C99BB7B6E96D16F, entity, x + 0.0, y + 0.0, z + 0.0) end

SET_ENTITY_HEADING = function(entity, heading) Natives.InvokeVoid(0x8E2530AA8ADA980E, entity, heading + 0.0) end

SET_ENTITY_COORDS = function(entity, x, y, z) Natives.InvokeVoid(0x239A3351AC1DA385, entity, x + 0.0, y + 0.0, z + 0.0) end

SET_ENTITY_INVINCIBLE = function(entity, bool) Natives.InvokeVoid(0x3882114BDE571AD4, entity, bool, true) end

SET_ENTITY_VISIBLE = function(entity, bool) Natives.InvokeVoid(0xEA1C610A04DB6BBB, entity, bool, true) end

SET_ENTITY_COLLISION = function(entity, bool) Natives.InvokeVoid(0x1A9205C1B9EE827F, entity, bool, false) end

SET_ENTITY_AS_MISSION = function(entity) Natives.InvokeVoid(0xAD738C3085FE7E11, entity, true, true) end

-------------------------------------------------- PTFX --------------------------------------------------
REQUEST_NAMED_PTFX_ASSET = function(asset) Natives.InvokeVoid(0xB80D8756B4668AB6, asset) end

HAS_NAMED_PTFX_ASSET_LOADED = function(asset) return Natives.InvokeBool(0x8702416E512EC454, asset) end

REMOVE_NAMED_PTFX_ASSET = function(asset) Natives.InvokeVoid(0x5F61EBBE1A00F96D, asset) end

USE_PTFX_ASSET = function(asset) Natives.InvokeVoid(0x6C38AF3693A69A91, asset) end

START_PTFX_AT_COORD = function(name, x, y, z, scale) Natives.InvokeVoid(0xF56B8137DF10135D, name, x + 0.0, y + 0.0, z + 0.0, 0.0, 0.0, 0.0, scale + 0.0) end

-------------------------------------------------- PLAYER --------------------------------------------------
GET_WANTED_LEVEL = function(playerID) return Natives.InvokeInt(0xE28E54788CE8F12D, playerID) end

IS_FRIEND = function(buffer) return Natives.InvokeBool(0x1A24A179F9B31654, buffer) end

GET_TARGETING_MODE = function() return Natives.InvokeInt(0x875BDD898B99C8CE) end

IS_PLAYER_TALKING = function(playerID) return Natives.InvokeBool(0x031E11F3D447647E, playerID) end

SET_TARGETING_MODE = function(mode) Natives.InvokeVoid(0xB1906895227793F3, mode) end

KICK_PLAYER = function(playerID) Natives.InvokeVoid(0xFA8904DC5F304220, playerID) end

SHOW_PROFILE = function(buffer) Natives.InvokeVoid(0x859ED1CEA343FCA8, buffer) end

-------------------------------------------------- NETWORK --------------------------------------------------
IS_HOST = function() return Natives.InvokeBool(0x8DB296B814EDDA07) end

IS_SESSION_ACTIVE = function() return Natives.InvokeBool(0xD83C2B94E7508980) end

GET_CONNECTED_PLAYERS = function() return Natives.InvokeInt(0xA4A79DD2D9600654) end

IS_IN_SESSION = function() return Natives.InvokeBool(0xCA97246103B63917) end

IS_PLAYER_CONTROL_ON = function() return Natives.InvokeBool(0x49C32D60007AFA47, GTA.GetLocalPlayerId()) end

GET_SCRIPT_HOST = function() return Natives.InvokeInt(0x1D6A14F1F9A736FC, "freemode", -1, 0) end

GET_HOST = function() return Natives.InvokeInt(0x8251FB94DC4FDFC8) end

-------------------------------------------------- SOUND --------------------------------------------------
PLAY_SOUND_FROM_COORD = function(name, x, y, z, ref) Natives.InvokeVoid(0x8D8686B622B88120, -1, name, x + 0.0, y + 0.0, z + 0.0, ref) end

PLAY_SOUND_FROM_ENTITY = function(name, entity, ref) Natives.InvokeVoid(0xE65F427EB70AB1ED, -1, name, entity, ref, true, 0) end

-------------------------------------------------- EXPLOSION --------------------------------------------------
ADD_OWNED_EXPLOSION = function(x, y, z, type, damage, IsAudible, IsInvisible, camshake) Natives.InvokeVoid(0x172AA1B624FA1013, GTA.PointerToHandle(GTA.GetLocalPed()), x + 0.0, y + 0.0, z + 0.0, type, damage, IsAudible, IsInvisible, camshake + 0.0) end

ADD_EXPLOSION = function(x, y, z, type, damage, IsAudible, IsInvisible, camshake) Natives.InvokeVoid(0xE3AD2BDBAEE269AC, x + 0.0, y + 0.0, z + 0.0, type, damage, IsAudible, IsInvisible, camshake + 0.0, false) end

-------------------------------------------------- PED --------------------------------------------------
IS_PED_IN_ANY_VEHICLE = function(ped) return Natives.InvokeBool(0x997ABD671D25CA0B, ped, false) end

SET_PED_INTO_VEHICLE = function(ped, veh, seat) Natives.InvokeVoid(0xF75B0D629E1C063D, ped, veh, seat) end

GET_PED_VEHICLE = function(ped) return Natives.InvokeInt(0x6094AD011A2EA87D, ped) end

-------------------------------------------------- VEHICLE --------------------------------------------------
IS_HORN_ACTIVE = function(playerID) return Natives.InvokeBool(0xFA1E2BF8B10598F9, playerID) end

IS_BOMB_BAY_OPEN = function(veh) return Natives.InvokeBool(0xD0917A423314BBA8, veh) end

SET_VEHICLE_SPEED = function(veh, speed) Natives.InvokeVoid(0xAB54A438726D25D5, veh, speed + 0.0) end

MODIFY_VEHICLE_SPEED = function(veh, speed) Natives.InvokeVoid(0x93A3996368C94158, veh, speed + 0.0) end

SET_HELI_BLADES_SPEED = function(veh, speed) Natives.InvokeVoid(0xFD280B4D7F3ABC4D, veh, speed + 0.0) end

-------------------------------------------------- TASK --------------------------------------------------
TASK_RELOAD = function(ped) Natives.InvokeVoid(0x62D2916F56B9CD2D, ped, true) end

TASK_LOOK_AT_ENTITY = function(ped, entity) Natives.InvokeVoid(0x69F4BE8C8CC4796C, ped, entity, -1) end

TASK_PARACHUTE = function(ped) Natives.InvokeVoid(0x16E42E800B472221, ped) end

-------------------------------------------------- WEAPON --------------------------------------------------
GET_WEAPON_IMPACT_COORDS = function(ped, buffer) return Natives.InvokeBool(0x6C4D0409BA1A2BC2, ped, buffer) end

REMOVE_WEAPON = function(ped, weapon) Natives.InvokeVoid(0x4899CB088EDF59B8, ped, weapon) end

GIVE_WEAPON_TO_PED = function(ped, weapon, ammo) Natives.InvokeVoid(0xBF0FD6E56C964FCB, ped, weapon, ammo, true, true) end

GET_VEHICLE_WEAPON = function(ped, buffer) Natives.InvokeVoid(0x1017582BCD3832DC, ped, buffer) end

SHOOT_BULLET = function(x1, y1, z1, x2, y2, z2, dmg, weapon) Natives.InvokeVoid(0x867654CBC7606F2C, x1 + 0.0, y1 + 0.0, z1 + 0.0, x2 + 0.0, y2 + 0.0, z2 + 0.0, dmg, true, weapon, GTA.PointerToHandle(GTA.GetLocalPed()), true, false, 1000.0) end

-------------------------------------------------- MISC --------------------------------------------------
IS_ALERT_ACTIVE = function() return Natives.InvokeBool(0xE18B138FABC53103) end

GET_ALERT_HASH = function() return Natives.InvokeInt(0x81DF9ABA6C83DFF9) end

QUIT_GAME = function() Natives.InvokeVoid(0xEB6891F03362FB12) end

-------------------------------------------------- PAD --------------------------------------------------
IS_CONTROL_PRESSED = function(control) return Natives.InvokeBool(0xF3A21BCD95725A4A, 0, control) end

SIMULATE_INPUT = function(control) Natives.InvokeVoid(0xE8A25867FBA3B05E, 2, control, 1.0) end
