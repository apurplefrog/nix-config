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
        mode = ["n" "i" "v"];
        key = "<c-l>";
        action = "<cmd>BufferLineCycleNext<cr>";
      }

      {
        mode = ["n" "i" "v"];
        key = "<c-h>";
        action = "<cmd>BufferLineCyclePrev<cr>";
      } 


      {
        mode = ["n" "i" "v"];
        key = "<c-j>";
        action = "<cmd>BufferLineGoToBuffer 1<cr>";
      } 


      {
        mode = ["n" "i" "v"];
        key = "<c-k>";
        action = "<cmd>BufferLineGoToBuffer -1<cr>";
      } 
    ];
  };
}
