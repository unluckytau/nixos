{ ... }:

{
	globals = {
		mapleader = " ";
		maplocalleader = " ";
		have_nerd_font = true;
		loaded_netrw = 1;
		loaded_netrwPlugin = 1;
	};

	opts = {
		# UI.
		number = true;
		relativenumber = true;
		signcolumn = "yes";
		cmdheight = 0;
		cursorline = true;
		termguicolors = true;
		showmode = false;
		
		# indents.
		tabstop = 2;
		shiftwidth = 2;
		expandtab = true;
		smartindent = true;
		breakindent = true;

		# search.
		ignorecase = true;
		smartcase = true;
		hlsearch = true;
		incsearch = true;

		# nav.
		wrap = false;
		splitright = true;
		splitbelow = true;

		# misc.
		updatetime = 250;
    timeoutlen = 300;
		lazyredraw = true;
		undofile = false;
		swapfile = false;
		backup = false;
		mouse = "a";
		inccommand = "split";
		winborder = "rounded";
		list = true;
		listchars = { tab = "  "; trail = " "; nbsp = "␣"; };

    # native cmp.
    completeopt = [ "menu" "menuone" "noselect" "popup" ];
    pumheight = 10;
	};
}
