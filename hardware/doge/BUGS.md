# rev0

* Inductor footprints for dc-dc regulators isn't very good. Gap between pads is too wide
* 32KHz crystal footprint is too big for any 32KHz crystal that's available to buy
* SPI NOR footprint is a no go for any 256Mbit chips
* SPI NOR reset isn't wired up and u-boot/kernel shits up the flash so the bootrom can't load
  from it anymore
* 3.3VA regulator can be replaced with a smaller+cheaper LDO
* vcc-rtc needs to connected to 3.3v via a diode
* vusb/vcc pin should be switched via diodes
