-- to do something?

vim.opt.clipboard = "unnamed"
vim.cmd [[color catppuccin-mocha]]
-- see if the file exists
local function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
local file_name = "/home/dries/.color_theme_mode"
if file_exists(file_name) then
    local lines = {}
    for line in io.lines(file_name) do
	lines[#lines + 1] = line
    end
    local mode = lines[1]
    if mode == 'dark' then
	local test = nil
	-- vim.cmd [[color catppuccin-mocha]]
    elseif mode == 'light' then
	local test = nil
	-- vim.cmd [[color catppuccin-frappe]]
    end
else
    print("Unable to locate the " .. file_name .. " Setting default color scheme.")
end
