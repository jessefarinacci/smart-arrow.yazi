--- @since 26.1.2

--- @sync entry
local function entry(_, job)
	local current = cx.active.current
	local new = (current.cursor + job.args[1]) % #current.files
	ya.emit("arrow", { new - current.cursor })
end

local function setup() end

return { entry = entry, setup = setup }
