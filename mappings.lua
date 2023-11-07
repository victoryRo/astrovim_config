
return {
  -- Normal mode
  n = {
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer"
    },

    -- live server 
    sl = { ":LiveServerStart<cr>", desc = "Run server ..." },
    st = { ":LiveServerStop<cr>", desc = "Stop server" },

    -- buffers
    ["<leader>b"] = { name = "Buffers" },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    }
  },
  -- Visual mode
  v = {},
  -- Insert mode
  i = {},
  t = {},
}
