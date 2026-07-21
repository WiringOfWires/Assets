-------------------------------------------------- ENTITY --------------------------------------------------
GET_ENTITY_HEADING = function(entity) return Natives.InvokeFloat(0xE83D4F9BA2A38914, entity) end

GET_OFFSET_FROM_ENTITY = function(entity, x, y, z) return Natives.InvokeV3(0x1899F328B0E12848, entity, x, y, z) end

GET_ENTITY_MODEL = function(handle) return Natives.InvokeInt(0x9F47B058362C84B5, handle) end

HAS_ENTITY_COLLIDED = function(entity) return Natives.InvokeBool(0x8BAD02F0368D9E14, entity) end

HAS_CONTROL_OF_ENTITY = function(entity) return Natives.InvokeBool(0x01BF60A500E28887, entity) end

DELETE_ENTITY = function(ptr) Natives.InvokeVoid(0xAE3CBE5BF394C9C9, ptr) end

REQUEST_CONTROL_OF_ENTITY = function(entity) Natives.InvokeVoid(0xB69317BF5E782347, entity) end

ATTACH_ENTITY_TO_ENTITY_PHYSICALLY = function(e1, e2, force) Natives.InvokeVoid(0xC3675780C92F90F9, e1, e2, -1, -1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, force, true, true, true, true, 0) end

ATTACH_ENTITY_TO_ENTITY = function(e1, e2, x, y, z) Natives.InvokeVoid(0x6B9BBD38AB0796DF, e1, e2, -1, x, y, z, 0.0, 0.0, 0.0, true, false, false, false, 0, true) end

DETACH = function(entity) Natives.InvokeVoid(0x961AC54BF0613F5D, entity, true, true) end

FREEZE_ENTITY = function(entity, bool) Natives.InvokeVoid(0x428CA6DBD1094446, entity, bool) end

BREAK_OBJECT = function(object) Natives.InvokeVoid(0xE7E4C198B0185900, object, true, true) end

SET_ENTITY_DYNAMIC = function(entity) Natives.InvokeVoid(0x1718DE8E3F2823CA, entity, true) end

SET_ENTITY_GRAVITY = function(entity) Natives.InvokeVoid(0x4A4722448F18EEF5, entity, true) end

SET_ENTITY_ROT = function(entity, pitch, roll, yaw) Natives.InvokeVoid(0x8524A8B0171D5E07, entity, pitch, roll, yaw, 2) end

SET_ENTITY_ALPHA = function(entity, alpha) Natives.InvokeVoid(0x44A0870B7E92D7C0, entity, alpha, false) end

SET_ENTITY_VELOCITY = function(entity, x, y, z) Natives.InvokeVoid(0x1C99BB7B6E96D16F, entity, x, y, z) end

SET_ENTITY_HEADING = function(entity, heading) Natives.InvokeVoid(0x8E2530AA8ADA980E, entity, heading) end

SET_ENTITY_COORDS = function(entity, x, y, z) Natives.InvokeVoid(0x239A3351AC1DA385, entity, x, y, z) end

SET_ENTITY_VISIBLE = function(entity, bool) Natives.InvokeVoid(0xEA1C610A04DB6BBB, entity, bool, false) end

SET_ENTITY_INVINCIBLE = function(entity, bool) Natives.InvokeVoid(0x3882114BDE571AD4, entity, bool, true) end

SET_ENTITY_PROOFS = function(entity, bool) Natives.InvokeVoid(0xFAEE099C6F890BB8, entity, bool, bool, bool, bool, bool, bool, bool, bool) end

SET_ENTITY_COLLISION = function(entity, bool) Natives.InvokeVoid(0x1A9205C1B9EE827F, entity, bool, false) end

SET_ENTITY_AS_MISSION = function(entity) Natives.InvokeVoid(0xAD738C3085FE7E11, entity, true, true) end

-------------------------------------------------- PTFX --------------------------------------------------
HAS_NAMED_PTFX_ASSET_LOADED = function(asset) return Natives.InvokeBool(0x8702416E512EC454, asset) end

REQUEST_NAMED_PTFX_ASSET = function(asset) Natives.InvokeVoid(0xB80D8756B4668AB6, asset) end

USE_PTFX_ASSET = function(name) Natives.InvokeVoid(0x6C38AF3693A69A91, name) end

START_PTFX_AT_COORD = function(name, x, y, z, scale) Natives.InvokeVoid(0xF56B8137DF10135D, name, x, y, z, 0.0, 0.0, 0.0, scale) end

START_LOOPED_PTFX_AT_ENTITY = function(name, entity, scale) return Natives.InvokeInt(0x6F60E89A7B64EE1D, name, entity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, scale) end

REMOVE_NAMED_PTFX_ASSET = function(asset) Natives.InvokeVoid(0x5F61EBBE1A00F96D, asset) end

SET_PTFX_ALPHA = function(ptfx, value) Natives.InvokeVoid(0xB44250AAA456492D, ptfx, value) end

STOP_PTFX = function(ptfx) Natives.InvokeVoid(0x8F75998877616996, ptfx) end

-------------------------------------------------- PLAYER --------------------------------------------------
IS_FRIEND = function(buffer) return Natives.InvokeBool(0x1A24A179F9B31654, buffer) end

GET_KILLER_OF_PLAYER = function(pid, ptr) return Natives.InvokeInt(0x2DA41ED6E1FCD7A5, pid, ptr) end

GET_TARGETING_MODE = function() return Natives.InvokeInt(0x875BDD898B99C8CE) end

IS_PLAYER_TALKING = function(pid) return Natives.InvokeBool(0x031E11F3D447647E, pid) end

SET_TARGETING_MODE = function(mode) Natives.InvokeVoid(0xB1906895227793F3, mode) end

HANDLE_FROM_PLAYER = function(pid, buffer) Natives.InvokeVoid(0x388EB2B86C73B6B3, pid, buffer, 13) end

SEND_TEXT_MESSAGE = function(message, buffer) Natives.InvokeVoid(0x3A214F2EC889B100, message, buffer) end

KICK_PLAYER = function(pid) Natives.InvokeVoid(0xFA8904DC5F304220, pid) end

SHOW_PROFILE = function(buffer) Natives.InvokeVoid(0x859ED1CEA343FCA8, buffer) end

-------------------------------------------------- NETWORK --------------------------------------------------
IS_HOST = function() return Natives.InvokeBool(0x8DB296B814EDDA07) end

IS_SESSION_ACTIVE = function() return Natives.InvokeBool(0xD83C2B94E7508980) end

GET_CONNECTED_PLAYERS = function() return Natives.InvokeInt(0xA4A79DD2D9600654) end

IS_IN_SESSION = function() return Natives.InvokeBool(0xCA97246103B63917) end

IS_PLAYER_CONTROL_ON = function() return Natives.InvokeBool(0x49C32D60007AFA47, GTA.GetLocalPlayerId()) end

GET_SCRIPT_HOST = function() return Natives.InvokeInt(0x1D6A14F1F9A736FC, "freemode", -1, 0) end

GET_HOST = function() return Natives.InvokeInt(0x8251FB94DC4FDFC8) end

GET_NETWORK_ID = function(entity) return Natives.InvokeInt(0xA11700682F3AD45C, entity) end

REGISTER_AS_NETWORKED = function(entity) Natives.InvokeVoid(0x06FAACD625D80CAA, entity) end

SET_CAN_MIGRATE = function(net, bool) Natives.InvokeVoid(0x299EEB23175895FC, net, bool) end

SET_NET_ID_EXISTS_ON_ALL_MACHINES = function(net) Natives.InvokeVoid(0xE05E81A888FA63C8, net, true) end

-------------------------------------------------- SOUND --------------------------------------------------
PLAY_SOUND_FROM_COORD = function(name, x, y, z, ref, networked) Natives.InvokeVoid(0x8D8686B622B88120, -1, name, x, y, z, ref, networked, 0, true) end

PLAY_SOUND_FROM_ENTITY = function(name, entity, ref, networked) Natives.InvokeVoid(0xE65F427EB70AB1ED, -1, name, entity, ref, networked, 1) end

-------------------------------------------------- EXPLOSION --------------------------------------------------
ADD_OWNED_EXPLOSION = function(owner, x, y, z, type, damage, isAudible, isInvisible, camshake) Natives.InvokeVoid(0x172AA1B624FA1013, owner, x, y, z, type, damage, isAudible, isInvisible, camshake) end

ADD_EXPLOSION = function(x, y, z, type, damage, isAudible, isInvisible, camshake) Natives.InvokeVoid(0xE3AD2BDBAEE269AC, x, y, z, type, damage, isAudible, isInvisible, camshake, false) end

-------------------------------------------------- PED --------------------------------------------------
IS_PED_IN_ANY_VEH = function(ped) return Natives.InvokeBool(0x997ABD671D25CA0B, ped, false) end

GET_PED_VEHICLE = function(ped) return Natives.InvokeInt(0x9A9112A0FE9A4713, ped, false) end

SET_PED_INTO_VEH = function(ped, veh, seat) Natives.InvokeVoid(0xF75B0D629E1C063D, ped, veh, seat) end

SET_PED_RAGDOLL = function(ped) Natives.InvokeVoid(0xAE99FB955581844A, ped, -1, -1, 0, true, true, true) end

-------------------------------------------------- VEHICLE --------------------------------------------------
IS_HORN_ACTIVE = function(pid) return Natives.InvokeBool(0xFA1E2BF8B10598F9, pid) end

SET_VEH_MOD_KIT = function(veh) Natives.InvokeVoid(0x1F2AA07F00B3217A, veh, 0) end

SET_VEH_MOD = function(veh, type, mod) Natives.InvokeVoid(0x6AF0636DDEDCB6DD, veh, type, mod, false) end

SET_VEH_COLORS = function(veh, c1, c2) Natives.InvokeVoid(0x4F1D4BE3A7F24601, veh, c1, c2) end

SET_VEH_MAX_SPEED = function(veh, speed) Natives.InvokeVoid(0xBAA045B4E42F3C06, veh, speed) end

MODIFY_VEH_SPEED = function(veh, speed) Natives.InvokeVoid(0x93A3996368C94158, veh, speed) end

SET_VEHICLE_SPEED = function(veh, speed) Natives.InvokeVoid(0xAB54A438726D25D5, veh, speed) end

IS_BOMB_BAY_OPEN = function(veh) return Natives.InvokeBool(0xD0917A423314BBA8, veh) end

-------------------------------------------------- TASK --------------------------------------------------
TASK_SHOOT_AT_ENTITY = function(ped, target, duration) Natives.InvokeVoid(0x08DA95E8298AE772, ped, target, duration, Utils.Joaat("FIRING_PATTERN_FULL_AUTO")) end

TASK_SHOOT_AT_COORD = function(ped, x, y, z, duration) Natives.InvokeVoid(0x46A6CC01E0826106, ped, x, y, z, duration, Utils.Joaat("FIRING_PATTERN_FULL_AUTO")) end

SET_PED_SHOOTING = function(ped, x, y, z) Natives.InvokeVoid(0x96A05E4FB321B1BA, ped, x, y, z, true) end

TASK_RELOAD = function(ped) Natives.InvokeVoid(0x62D2916F56B9CD2D, ped, true) end

TASK_COMBAT = function(ped, target) Natives.InvokeVoid(0xF166E48407BAC484, ped, target, 0, 16) end

IGNORE_EVENTS = function(ped) Natives.InvokeVoid(0x9F8AA94D6D97DBF4, ped, true) end

GO_TO_ENTITY = function(ped, target, time) Natives.InvokeVoid(0x6A071245EB0D1882, ped, target, time, 1.0, 100.0, 100.0, 0) end

KEEP_TASK = function(ped) Natives.InvokeVoid(0x971D38760FBC02EF, ped, true) end

TASK_TEMP_ACTION = function(ped, veh, action) Natives.InvokeVoid(0xC429DCEEB339E129, ped, veh, action, -1) end

-------------------------------------------------- WEAPON --------------------------------------------------
GET_WEAPON_IMPACT_COORDS = function(ped, buffer) return Natives.InvokeBool(0x6C4D0409BA1A2BC2, ped, buffer) end

REMOVE_WEAPON = function(ped, weapon) Natives.InvokeVoid(0x4899CB088EDF59B8, ped, weapon) end

GIVE_WEAPON_TO_PED = function(ped, weapon, ammo, inHand) Natives.InvokeVoid(0xBF0FD6E56C964FCB, ped, weapon, ammo, true, inHand) end

GET_PED_WEAPON = function(ped) return Natives.InvokeInt(0x3B390A939AF0B5FC, ped, false) end

GET_VEHICLE_WEAPON = function(ped, buffer) Natives.InvokeVoid(0x1017582BCD3832DC, ped, buffer) end

SET_PED_WEAPON = function(ped, hash) Natives.InvokeVoid(0xADF692B254977C0C, ped, hash, true) end

SHOOT_BULLET = function(x1, y1, z1, x2, y2, z2, dmg, weapon, owner, isAudible, isInvisible, speed) Natives.InvokeVoid(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, dmg, true, weapon, owner, isAudible, isInvisible, speed) end

-------------------------------------------------- CAM --------------------------------------------------
CREATE_CAM = function(cam) return Natives.InvokeInt(0xC3981DCE61D9E13F, cam, true) end

GET_CAM_COORD = function(cam) return Natives.InvokeV3(0xBAC038F7459AE5AE, cam) end

GET_CAM_FOV = function(cam) return Natives.InvokeFloat(0xC3330A45CCCDB26A, cam) end

SET_CAM_COORD = function(cam, x, y, z) Natives.InvokeVoid(0x4D41783FB745E42E, cam, x, y, z) end

SET_CAM_ROT = function(cam, x, y, z) Natives.InvokeVoid(0x85973643155D0B07, cam, x, y, z, 2) end

SET_CAM_ACTIVE = function(cam, bool) Natives.InvokeVoid(0x026FB97D0A425F84, cam, bool) end

RENDER_CAMS = function(bool) Natives.InvokeVoid(0x07E5B515DB0636FC, bool) end

SET_CAM_FOV = function(cam, fov) Natives.InvokeVoid(0xB13C14F66A00D047, cam, fov) end

SET_CAM_COORD = function(cam, x, y, z) Natives.InvokeVoid(0x4D41783FB745E42E, cam, x, y, z) end

DESTROY_CAM = function(cam) Natives.InvokeVoid(0x865908C81A2C22E9, cam, true) end

CLEAR_FOCUS = function() Natives.InvokeVoid(0x31B73D1EA9F01DA2) end

REQUEST_COLLISION_AT_COORD = function(x, y, z) Natives.InvokeVoid(0x07503F7948F491A7, x, y, z) end

SET_FOCUS_POS = function(x, y, z) Natives.InvokeVoid(0xBB7454BAFF08FE25, x, y, z, 0.0, 0.0, 0.0) end

-------------------------------------------------- MISC --------------------------------------------------
IS_WARNING_MESSAGE_ACTIVE = function() return Natives.InvokeBool(0xE18B138FABC53103) end

GET_ALERT_HASH = function() return Natives.InvokeInt(0x81DF9ABA6C83DFF9) end

IS_DISABLED_CONTROL_PRESSED = function(control) return Natives.InvokeBool(0xE2587F8CBBD87B1D, 0, control) end

IS_CONTROL_PRESSED = function(control) return Natives.InvokeBool(0xF3A21BCD95725A4A, 0, control) end

IS_CONTROL_RELEASED = function(control) return Natives.InvokeBool(0x648EE3E7F38877DD, 0, control) end

SIMULATE_INPUT = function(type, control) Natives.InvokeVoid(0xE8A25867FBA3B05E, type, control, 1.0) end

DISABLE_CONTROLS = function() Natives.InvokeVoid(0x5F4B6931816E599B, 0) end

ENABLE_CONTROL = function(control) Natives.InvokeVoid(0x351220255D64C155, 0, control) end

GET_GAME_TIMER = function() return Natives.InvokeInt(0x9CD27B0045628463) end

CREATE_PHONE = function(type) Natives.InvokeVoid(0xA4E8E696C532FBC7, type) end

DESTROY_PHONE = function() Natives.InvokeVoid(0x3BC861DF703E5097) end

ACTIVATE_CELL_CAM = function() Natives.InvokeVoid(0xFDE8F069C542D126, true, true) end

ACTIVATE_SELFIE_MDOE = function() Natives.InvokeVoid(0x015C49A93E3E086E, true) end
