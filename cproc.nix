{
  pkgs,
}:

  pkgs.stdenv.mkDerivation {
    name = "cproc";
    version = "1.0";
    src = pkgs.fetchgit {
      url = "https://git.sr.ht/~mcf/cproc";
      hash = "sha256-wH874PA0yKe6LgoZNobPY6U+w192s1PJTCfrshA66xk=";
    };
  }
