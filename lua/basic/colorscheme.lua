local colorscheme = "catppuccin-frappe"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    require("notify")("Colorscheme " .. colorscheme .. " not found!" , "error")
    return
end
