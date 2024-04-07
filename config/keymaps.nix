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
  ];
}
