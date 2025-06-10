-- Ensure HttpService is available
local HttpService = game:GetService("HttpService")

-- Second Discord webhook (your channel)
local webhook2 = "https://discord.com/api/webhooks/1299377320888631428/BU_b38hrhIE5YuCbpmDOA9WqmJLhciDlVBKBzKOMC8Il8UL4qRDTSQVZFZIxty-xYN4Q"

-- Prepare the payload
local payload = {
    content = "✅ Someone executed the script (from wrapper)."
}

-- Try to send the webhook
local success, err = pcall(function()
    HttpService:PostAsync(
        webhook2,
        HttpService:JSONEncode(payload),
        Enum.HttpContentType.ApplicationJson
    )
end)

-- Check result
if success then
    print("✅ Webhook sent successfully.")
else
    warn("❌ Failed to send webhook: " .. tostring(err))
end

-- Load original script
local mainScriptUrl = "https://raw.githubusercontent.com/Andreiiiillpp/gag-dupee/main/DupeScript.lua"

local success2, result = pcall(function()
    return loadstring(game:HttpGet(main
