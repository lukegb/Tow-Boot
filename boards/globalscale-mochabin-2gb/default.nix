{ lib, pkgs, ... }:

{
  device = {
    manufacturer = "Globalscale Technologies";
    name = "Mochabin";
    identifier = "globalscale-mochabin-2gb";
    productPageURL = "https://globalscaletechnologies.com/product/mochabin-copy/";
  };

  hardware = {
    soc = "armada-7040";
    marvell.ble = "${pkgs.Tow-Boot.armTrustedFirmwareMochabin2GBBLE}/ble.bin";
    marvell.globalscale.mochabin.enable = true;
  };
}
