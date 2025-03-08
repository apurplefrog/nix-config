{...}: {
  programs.nixvim = {
    opts = {
      fillchars = "eob: ";

      number = true;
      relativenumber = true;

      tabstop = 4;
      softtabstop = 4;
      showtabline = 4;
      shiftwidth = 4;
      expandtab = true;
      smartindent = true;
      breakindent = true;

      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;

      splitbelow = true;
      splitright = true;

      mouse = "a";

      updatetime = 50;

      swapfile = false;
      backup = false;
      undofile = true;

      scrolloff = 10;

      cursorline = true;

      wildmenu = true;
    };
  };
}
