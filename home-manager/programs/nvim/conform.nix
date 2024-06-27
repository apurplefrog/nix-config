{...}: {
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    formattersByFt = {
      lua = ["stylua"];
      python = ["black"];
      rust = ["rustfmt"];
      nix = ["nixfmt"];
      c = ["clang-format"];
      asm = ["asmfmt"];
      "_" = ["trim_whitespace"];
    };
  };
}
