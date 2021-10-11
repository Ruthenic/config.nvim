-- Experimental vim-plug wrapper for use in `init.lua`s
local Plug = {
	Begin = vim.fn['plug#begin']
	_Plug = vim.fn['plug#']
	End   = vim.fn['plug#end']
	include = function(repo, opts){
		if(opts == {})
		then
			_Plug(repo)
		else
			_Plug(repo, opts)
		end
	}
}

