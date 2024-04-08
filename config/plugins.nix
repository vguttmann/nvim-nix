{
  # extraPlugins = with pkgs; [ vimPlugins.nvim-jdtls ];
  plugins = {
    rainbow-delimiters.enable = true; # This gives every parenthesis a different color
    treesitter.enable = true; # Fancy Syntax highlighting plugin
    comment.enable = true; # Provides easy keybindings to comment a line or multiple lines
    airline.enable = true; # Fancy statusbar
    todo-comments.enable = true; # Shows the TODO comments in a colorful way
    nvim-autopairs = {
      enable = true; # Bracket autoclose plugin
      checkTs = true;
    };
		# nvim-cmp setup
		cmp.enable = true;
		cmp-buffer.enable = true;
		cmp-calc.enable = true;
		cmp-cmdline.enable = true;
		cmp-cmdline-history.enable = true;
		cmp-emoji.enable = true;
		cmp-fuzzy-buffer.enable = true;
		cmp-fuzzy-path.enable = true;
		cmp-git.enable = true;
		cmp-latex-symbols.enable = true;
    cmp-nvim-lsp.enable = true; # Needed for cmp LSP completion
		cmp-nvim-lsp-signature-help.enable = true;
		cmp-path.enable = true;
		cmp-treesitter.enable = true;
		cmp-zsh.enable = true;
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
		lsp-format.enable = true;
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
