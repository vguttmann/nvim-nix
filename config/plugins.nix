{
  # extraPlugins = with pkgs; [ vimPlugins.nvim-jdtls ];
  plugins = {
    rainbow-delimiters.enable = true; # This gives every parenthesis a different color
    treesitter.enable = true; # Fancy Syntax highlighting plugin
    cmp-dictionary.enable = true;
    cmp-nvim-lsp.enable = true;
    comment.enable = true; # Provides easy keybindings to comment a line or multiple lines
    airline.enable = true; # Fancy statusbar
    todo-comments.enable = true; # Shows the TODO comments in a colorful way
    nvim-autopairs = {
      enable = true; # Bracket autoclose plugin
      checkTs = true;
    };
#      coq-nvim = {
      # enable = true; # Autocompletion display
      # autoStart = true;
#      };
    lsp = {
      enable = true;
      servers = {
	gopls.enable = true; # Golang LSP
	rust-analyzer = {
	  enable = true; # Rust LSP
	  installRustc = false;
	  installCargo = false;
	};
	nil_ls.enable = true; # Nix LSP
	jsonls.enable = true; # JSON LSP
	yamlls.enable = true; # YAML LSP
	# pylsp.enable = true; # Python LSP
	clangd.enable = true; # C/C++ LSP
	java-language-server.enable = true; # Java LSP
      };
    };
    telescope = {
      enable = true;
      keymaps = {
	"<leader>gf" = {
	  action = "git_files";
	  desc = "Telescope git files";
	};
	"<leader>ff" = {
	  action = "find_files";
	  desc = "Telescope files generally";
	};
      };
    };
  }; 
}
