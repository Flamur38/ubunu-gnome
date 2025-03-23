function ColorMyPencils(color)
	color = color or "rose-pine" --tokyonight-moon
	vim.cmd("colorscheme " .. color)

    -- Optional: Transparent background (uncomment if desired)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
