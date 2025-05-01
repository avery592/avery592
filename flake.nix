# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
{
  inputs = {
    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    anemone = {
      url = "git+ssh://public-github/avery592/anemone?ref=main";
      flake = false;
    };
  };
  outputs = {
    devshell,
    flake-utils,
    nixpkgs,
    anemone,
    ...
  }: let
    linkThemes = ''
      mkdir -p themes
      ln -snf "${anemone}" "themes/anemone"
    '';
    package = pkgs: pkgs.callPackage ./default.nix {inherit anemone; inherit linkThemes;};
  in
    (flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          devshell.overlays.default
        ];
      };
    in {
      formatter = pkgs.alejandra;
      devShells.default = pkgs.devshell.mkShell {
        commands = [
          {package = pkgs.zola;}
          {package = pkgs.libwebp;}
        ];
        devshell.startup.linkThemes.text = linkThemes;
      };
      packages.default = package pkgs;
    }))
    // {
      overlays.default = final: prev: {
        avery592 = package prev;
      };
    };
}
