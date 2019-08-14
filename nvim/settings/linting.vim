" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

call neomake#configure#automake('nrwi', 500)
