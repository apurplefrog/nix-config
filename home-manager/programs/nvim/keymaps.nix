{inputs, ...}: {
  programs.nixvim = {
    globals.mapleader = " ";
    keymaps = [
      {
        mode = ["n" "i" "v" "t"];
        key = "<c-n>";
        action = "<cmd>NvimTreeToggle<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-\\>";
        action = "<cmd>ToggleTerm<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-tab>";
        action = "<cmd>BufferLineCycleNext<cr>";
      }

      {
        mode = ["n" "i" "v" "t"];
        key = "<c-s-tab>";
        action = "<cmd>BufferLineCyclePrev<cr>";
      } 
    ];
  };
}
