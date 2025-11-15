local M = {}

function M.setup()

	vim.cmd("highlight clear")
	-- vim.cmd("syntax reset")
	vim.o.background = "dark"
	vim.g.colors_name = "nightgem"

	local set = vim.api.nvim_set_hl

	local colors = {
		bg = "#090809", -- charcoal black
		fg = "#aaaaaa",
		pink = "#FEC671",
		yellow = "#CE78A6",
		red = "#ff6666", -- for errors
		blue = "#7781ee",
		light_grey = "#7a7a7a",
		dark_grey = "#3a3a3a",
		green = "#65BA7E"
	}

	-- Define highlight groups

	set(0, "Normal", { fg = colors.fg, bg = colors.bg })

	--Reeplacing the ugly cyan in the default color scheme
	set(0, "Directory", { fg = colors.blue })
	set(0, "MoreMsg", { fg = colors.dark_grey })
	set(0, "Question", { fg = colors.blue })
	set(0, "QuickFixLine", { fg = colors.blue })
	set(0, "Special", { fg = colors.blue })
	set(0, "DiagnosticInfo", { fg = colors.blue })
	set(0, "Function", { fg = colors.fg })
	set(0, "Changed", { fg = colors.blue })

	-- Other
	set(0, "@variable", { fg = colors.fg })
	set(0, "@property", { fg = colors.fg })
	set(0, "@variable.member", { link = "@property" })
	set(0, "@function", { link = "Function" })
	set(0, "@function.call", { link = "Function" })
	set(0, "Comment", { fg = colors.dark_grey })
	set(0, "Delimiter", { fg = colors.green })
	set(0, "Keyword", { fg = colors.yellow })
	set(0, "Identifier", { fg = colors.yellow })
	set(0, "@string", { fg = colors.pink })
	set(0, "String", { fg = colors.pink })
	set(0, "@punctiation", { link = "Delimiter" })
	set(0, "@punctuation.bracket", { fg = colors.light_grey }) -- make parentheses and braces red
	set(0, "ModeMsg", { fg = colors.light_grey })
	set(0, "StatusLine", { fg = colors.light_grey, bg = colors.bg })
	set(0, "Pmenu", { link = "StatusLine" })
	set(0, "ErrorMsg", { fg = colors.red })
	set(0, "DiagnosticError", { fg = colors.red })
	set(0, "MsgArea", { fg = colors.fg })
	set(0, "Constant", { fg = colors.fg })


end

return M
