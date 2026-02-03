let pkgs = import <nixpkgs> {}; in

  pkgs.mkShell {
    packages = with pkgs; [
      jq
      (callPackage ./cproc.nix { inherit pkgs; })
      (callPackage ./qbe.nix { inherit pkgs; })
    ];
  }
