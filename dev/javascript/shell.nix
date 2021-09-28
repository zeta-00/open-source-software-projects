# paste in terminal:
# echo "use nix" >> .envrc
# direnv allow

{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell
  {
    nativeBuildInputs = with pkgs;
      [
        (with nodePackages;
          [
            node2nix
            nodejs-14_x

            bash-language-server
            eslint
            typescript
            typescript-language-server
            dockerfile-language-server-nodejs
            vscode-css-languageserver-bin
            vscode-html-languageserver-bin
            vscode-json-languageserver-bin
          ])
        # deno is a typescript dependency:
        deno
        
        bashInteractive
      ];

    shellHook =
      ''
         export EDITOR=emacs;
      '';    
  }
