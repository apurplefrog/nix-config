{...}: {
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [
      {
        mode = "n";
        key = "<c-n>";
        action = "<cmd>NvimTreeFocus<cr>";
      }

      {
        mode = "n";
        key = "<cs-n>";
        action = "<cmd>NvimTreeClose<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-\\>";
        action = "<cmd>ToggleTerm<cr>";
      }

      {
        mode = "n";
        key = "<c-l>";
        action = "<cmd>BufferLineCycleNext<cr>";
      }

      {
        mode = "n";
        key = "<c-h>";
        action = "<cmd>BufferLineCyclePrev<cr>";
      } 


      {
        mode = "n";
        key = "<c-j>";
        action = "<cmd>BufferLineGoToBuffer 1<cr>";
      } 


      {
        mode = "n";
        key = "<c-k>";
        action = "<cmd>BufferLineGoToBuffer -1<cr>";
      } 

      {
        mode = "n";
        key = "<c-s>";
        action = "<cmd>w<cr>";
      }

      {
        mode = "v";
        key = "<cs-c>";
        action = "\"+y";
      }
    ];
  };
}
