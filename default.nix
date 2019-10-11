# This imports the nix package collection,
# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};

# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "purescript-tooling-2019";

  # The packages in the `buildInputs` list will be added to the PATH in our shell
  buildInputs = [
    # see https://nixos.org/nixos/packages.html to search for more
    pkgs.nodejs-12_x
    pkgs.yarn
    pkgs.tmux
  ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
  '';
}
