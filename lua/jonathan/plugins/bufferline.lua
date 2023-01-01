local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

local close_buffer = function(bufnum)
	local ok, bufdelete = pcall(require, "bufdelete")
	if ok then
		bufdelete.bufdelete(bufnum, true)
	else
		vim.cmd.bdelete({ args = { bufnum }, bang = true })
	end
end

bufferline.setup({
	options = {
		offsets = {
			{ filetype = "NvimTree", text = "", padding = 1 },
		},
		close_command = close_buffer,
		right_mouse_command = close_buffer,
		tab_size = 20,
		separator_style = "thin",
	},
})
