
-- disable some default providers when checkhealth
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end

---------------------- Config vim go plugin -----------------------------------------------\\

-- disable all linters as that is taken care of by coc.nvim
vim.g['go_diagnostics_enabled'] = 1
vim.g['go_metalinter_enabled'] = "['vet', 'golint', 'errcheck']"
vim.g['go_metalinter_autosave'] = 1
vim.g['go_metalinter_autosave_enabled'] = "['vet', 'golint']"
vim.g['go_metalinter_deadline'] = "5s"
-- don't jump to errors after metalvnter is invoked
vim.g['go_jump_to_error'] = 0
-- run go imports on file save
vim.g['go_fmt_command'] = 'goimports'
-- automatically highlight variable your cursor is on
vim.g['go_auto_sameids'] = 1
-- gofmt shows any errors during parsing the file
vim.g['go_fmt_fail_silently'] = 0
-- Automatically displays information every time you move the cursor
vim.g['go_auto_type_info'] = 1

-- syntax highlighting
vim.g['go_highlight_types'] = 1
vim.g['go_highlight_fields'] = 1
vim.g['go_highlight_functions'] = 1
vim.g['go_highlight_function_calls'] = 1
vim.g['go_highlight_operators'] = 1
vim.g['go_highlight_extra_types'] = 1
vim.g['go_highlight_build_constraints'] = 1
vim.g['go_highlight_generate_tags'] = 1

vim.cmd [[
   augroup NvimGo
       autocmd!
       autocmd User NvimGoLintPopupPost wincmd p
   augroup END
]]

------------------------------------------------------------------------------------------\\

return { -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
}



