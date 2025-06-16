{
  keymaps = [
    {
      mode = "n";
      key = "<leader>ee";
      # Expands the LSP error message (useful when the message is longer than a line, because the LSP doesn't have line wrap
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      options = {
        silent = true;
      };
    }

    { mode = "n"; key = "<Esc>"; action.__raw = "vim.cmd.noh"; }

    { mode = "n"; key = "<leader>ww";
      action.__raw = ''
        function()
          if vim.opt.wrap:get() then
            vim.cmd.set('nowrap')
          else
            vim.cmd.set('wrap')
          end
        end
      ''; }

    # harpoon binds
    
    { mode = "n"; key = "<leader>a"; action.__raw = "function() require'harpoon':list():add() end"; }
    { mode = "n"; key = "<C-e>"; action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end"; }
    { mode = "n"; key = "<C-h>"; action.__raw = "function() require'harpoon':list():select(1) end"; }
    { mode = "n"; key = "<C-t>"; action.__raw = "function() require'harpoon':list():select(2) end"; }
    { mode = "n"; key = "<C-n>"; action.__raw = "function() require'harpoon':list():select(3) end"; }
    { mode = "n"; key = "<C-s>"; action.__raw = "function() require'harpoon':list():select(4) end"; }
  ];
}
