{pkgs, ...}:
{
  extraPlugins = with pkgs; [ 
    vimPlugins.nvim-jdtls 
  ];
}
