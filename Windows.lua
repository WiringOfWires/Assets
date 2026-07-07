-------------------------------------------------- Chat History --------------------------------------------------
local ChatHistory = {}
local cooldown = 0
EventMgr.RegisterHandler(eLuaEvent.ON_CHAT_MESSAGE, function(player, text)
    local sender = player:GetName()
    local time = Time.GetEpocheMs()
    if sender == Players.GetName(GTA.GetLocalPlayerId()) then
        if time > cooldown + 10 then
            table.insert(ChatHistory, {name = sender, text = text})
            cooldown = time
        end
    else
        table.insert(ChatHistory, {name = sender, text = text})
    end
end)
function RenderChatWindow()
    local flags = ImGuiWindowFlags.None
    if not GUI.IsOpen() then
        flags = flags + ImGuiWindowFlags.NoMove
    end
    if ImGui.Begin("Chat History", true, flags) then
        for _, t in pairs(ChatHistory) do
            ImGui.Text(("[%s]: %s"):format(t.name, t.text))
        end
        ImGui.End()
    end
end
-------------------------------------------------- Game Info --------------------------------------------------
function RenderInfoWindow()
    local flags = ImGuiWindowFlags.NoResize + ImGuiWindowFlags.AlwaysAutoResize + ImGuiWindowFlags.NoCollapse
    if not GUI.IsOpen() then
        flags = flags + ImGuiWindowFlags.NoMove
    end
    if ImGui.Begin("Game Info", true, flags) then
        local peds = PoolMgr.GetCurrentPedCount()
        local maxPeds = PoolMgr.GetMaxPedCount()
        local vehs = PoolMgr.GetCurrentVehicleCount()
        local maxVehs = PoolMgr.GetMaxVehicleCount()
        local objs = PoolMgr.GetCurrentObjectCount()
        local maxObjs = PoolMgr.GetMaxObjectCount()
        local sessionHost = Players.GetName(GET_HOST_PLAYER_INDEX())
        if sessionHost == "Invalid" then sessionHost = "None" end
        local scriptHost = Players.GetName(GET_SCRIPT_HOST())
        if scriptHost == "Invalid" then scriptHost = "None" end
        local playersCount = GET_CONNECTED_PLAYERS()

        ImGui.BulletText(("FPS: %.0f"):format(ImGui.GetFrameRate()))
        ImGui.Separator()
        ImGui.Text(("Peds: %i / %i"):format(peds, maxPeds))
        ImGui.Text(("Vehicles: %i / %i"):format(vehs, maxVehs))
        ImGui.Text(("Objects: %i / %i"):format(objs, maxObjs))
        ImGui.Separator()
        ImGui.Text("Session Host: " .. sessionHost)
        ImGui.Text("Script Host: " .. scriptHost)
        ImGui.Text("Players: " .. playersCount)
        ImGui.End()
    end
end
-------------------------------------------------- Lexis Users --------------------------------------------------
function RenderModdersWindow()
    local flags = ImGuiWindowFlags.NoResize + ImGuiWindowFlags.AlwaysAutoResize + ImGuiWindowFlags.NoCollapse
    if not GUI.IsOpen() then
        flags = flags + ImGuiWindowFlags.NoMove
    end
    local t = {}
    local players = Players.Get()
    for _, pid in pairs(players) do
        local name = Players.GetName(pid)
        local player = Players.GetById(pid)
        if player ~= nil then
            local rid = player:GetGamerInfo().RockstarId

            for _, nigger in pairs(lexis) do
                if rid == nigger then
                    table.insert(t, {name = name, reason = "Lexis"})
                end
            end
        end
    end
    if #t > 0 then
        if ImGui.Begin("Lexis Users", true, flags) then
            for _, m in pairs(t) do
                ImGui.Text(("%s is modding (%s)"):format(m.name, m.reason))
            end
            ImGui.End()
        end
    end
end
