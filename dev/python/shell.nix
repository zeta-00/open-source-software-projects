# paste in terminal:
# echo "use nix" >> .envrc
# direnv allow
# direnv deny (to disable direnv)

{ pkgs ? import <nixpkgs> {} }:
let
  pythonEnv = pkgs.python38.withPackages (ps: with ps;
    [
      numpy
      matplotlib
      toolz

      # ipython for interactive computing:
      # jupyter
      # jupyter_client
      # jupyter_console
      ipython
      ipykernel
      ipywidgets
      widgetsnbextension
      ipyparallel
      pkgs.nbstripout
      nbmerge
      # vega

      # python autocompletion tool:
      jedi
      epc

      # python-language-server installation:
      python-language-server
      # extra plugins for python-lsp:
      pyls-mypy

      # pyls-isort

      pyls-black
      rope
      pyflakes
      mccabe
      pycodestyle
      pydocstyle
      autopep8
      yapf
    ]);
in
with pkgs;
mkShell
  {
    nativeBuildInputs = with pkgs;
      [
        pythonEnv

        # atom text editor:
        # atom

        # required for nix-direnv:
        bashInteractive
      ];

    shellHook =
      ''
         export EDITOR=emacs;
      '';
    
  }
