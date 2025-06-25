{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git ];

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
