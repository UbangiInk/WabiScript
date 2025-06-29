local Json = require("jsonWrapper")
local secrets = require("secrets")
local LrHttp = import("LrHttp")
local LrTasks = import("LrTasks")

local WabiCaption = {}

function WabiCaption.generateCaption(metadata, personaPrompt)
  local result

  LrTasks.startAsyncTask(function()
    local payload = Json.encodeTable({
      model = "gpt-4",
      messages = {
        { role = "system", content = personaPrompt },
        { role = "user", content = metadata }
      },
      temperature = 0.8
    })

    local headers = {
      { field = "Authorization", value = "Bearer " .. secrets.openai_api_key },
      { field = "Content-Type", value = "application/json" }
    }

    local response = LrHttp.post("https://api.openai.com/v1/chat/completions", payload, headers)

    if response and response.body then
      local parsed = Json.decodeString(response.body)
      result = parsed.choices[1].message.content
    else
      result = "The ink has not yet dried—please check your connection."
    end
  end)

  return result
end

return WabiCaption