local json = require("dkjson")

local M = {}

function M.encodeTable(tbl)
  local str, err = json.encode(tbl, { indent = false })
  if not str then
    error("WabiScript: Failed to encode JSON — " .. (err or "unknown error"))
  end
  return str
end

function M.decodeString(jsonStr)
  local obj, pos, err = json.decode(jsonStr, 1, nil)
  if err then
    error("WabiScript: Failed to decode JSON — " .. err)
  end
  return obj
end

return M