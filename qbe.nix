{
  pkgs,
}:

  pkgs.stdenv.mkDerivation {
    name = "qbe";
    version = "1.0";
    src = pkgs.fetchgit {
      url = "git://c9x.me/qbe.git";
      rev = "cf06ce159d149b625a4eee2fdf2be0d54ccca49d";
      hash = "sha256-f4t6mJekm8/dCtR6wIMzvoDHocfvX2kvReKvysUBCPA=";
    };
    installPhase = ''
      make install PREFIX=$out
    '';
    patches = [ ./0001-dump-liveness-json.patch ];
  }
