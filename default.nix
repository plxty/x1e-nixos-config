{
  nixosModules.x1e = {
    imports = [
      ./modules/x1e80100.nix
      ./modules/el2.nix
    ];
    config = {
      nixpkgs.overlays = [
        (import ./packages/overlay.nix)
      ];
    };
  };
}
