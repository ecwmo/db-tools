{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [ git basedpyright pre-commit ruff ];

  languages.python = {
    enable = true;
    version = "3.11";
    venv.enable = true;
    uv.enable = true;
  };

  enterShell = ''
    git --version
  '';

  enterTest = ''
    echo "Running tests"
    pytest
  '';
}
