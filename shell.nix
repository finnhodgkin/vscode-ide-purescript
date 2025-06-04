{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20

    # PureScript tools directly from nixpkgs instead of easy-purescript-nix
    purescript
    spago

    # Additional useful tools
    nodePackages.npm
    git  # Required for spago to fetch dependencies
  ];
}
