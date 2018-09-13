FIRMWARE_BUILDROOT=buildroot-firmware
FLASHER_BUILDROOT=buildroot-flasher
FIRMWARE_BUILDROOTARGS=BR2_DEFCONFIG=../dogedoge-buildroot/configs/dogedoge_defconfig \
	BR2_EXTERNAL="../dogedoge-buildroot ../thingyjp-buildroot" BR2_DL_DIR=../dl
FLASHER_BUILDROOTARGS=BR2_DEFCONFIG=../dogedoge-buildroot/configs/dogedoge_flasher_defconfig \
	BR2_EXTERNAL="../dogedoge-buildroot" BR2_DL_DIR=../dl

.PHONY: all firmware flasher dldir buildroot flasher_buildroot clean

all: firmware flasher

firmware: output/fit.img

flasher: output/flasher.img

output/fit.img: firmware_buildroot
	mkdir -p output
	cp $(FIRMWARE_BUILDROOT)/output/images/fit.img output/
	cp $(FIRMWARE_BUILDROOT)/output/images/nor.img output/

output/flasher.img: firmware flasher_buildroot
	mkdir -p output
	cp $(FLASHER_BUILDROOT)/output/images/flasher.img output/

dldir:
	mkdir -p ./dl

firmware_buildroot: dldir
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(FIRMWARE_BUILDROOTARGS) defconfig
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(FIRMWARE_BUILDROOTARGS)

firmware_buildroot_config:
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(FIRMWARE_BUILDROOTARGS) defconfig
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(FIRMWARE_BUILDROOTARGS) menuconfig
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(FIRMWARE_BUILDROOTARGS) savedefconfig

flasher_buildroot: dldir
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS) defconfig
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS)

flasher_buildroot_config:
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS) defconfig
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS) menuconfig
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS) savedefconfig

clean:
	$(MAKE) -C $(FIRMWARE_BUILDROOT) $(BUILDROOTARGS) clean
	$(MAKE) -C $(FLASHER_BUILDROOT) $(FLASHER_BUILDROOTARGS) clean
	rm -rf output
