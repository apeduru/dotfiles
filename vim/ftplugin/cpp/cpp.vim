if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

autocmd Filetype cpp let b:delimitMate_matchpairs = "(:),[:],{:}"

