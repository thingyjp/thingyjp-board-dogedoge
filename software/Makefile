.PHONY: all firmware flasher dldir buildroot flasher_buildroot clean

all: firmware

firmware: output/fit.img

flasher: output/flasher.img

output/fit.img: buildroot
	mkdir -p output
	cp buildroot/output/images/fit.img output/
	cp buildroot/output/images/nor.img output/

output/flasher.img: firmware flasher_buildroot
	mkdir -p output
	cp flasher-buildroot/output/images/flasher.img output/

BUILDROOTARGS=BR2_DEFCONFIG=../dogedoge-buildroot/configs/dogedoge_defconfig \
	BR2_EXTERNAL="../dogedoge-buildroot ../thingyjp-buildroot" BR2_DL_DIR=../dl
FLASHER_BUILDROOTARGS=BR2_DEFCONFIG=../dogedoge-buildroot/configs/dogedoge_flasher_defconfig \
	BR2_EXTERNAL="../dogedoge-buildroot" BR2_DL_DIR=../dl

dldir:
	mkdir -p ./dl

buildroot: dldir
	$(MAKE) -C buildroot $(BUILDROOTARGS) defconfig
	$(MAKE) -C buildroot $(BUILDROOTARGS)

buildroot_config:
	$(MAKE) -C buildroot $(BUILDROOTARGS) defconfig
	$(MAKE) -C buildroot $(BUILDROOTARGS) menuconfig
	$(MAKE) -C buildroot $(BUILDROOTARGS) savedefconfig

flasher_buildroot: dldir
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS) defconfig
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS)

flasher_buildroot_config:
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS) defconfig
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS) menuconfig
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS) savedefconfig

clean:
	$(MAKE) -C buildroot $(BUILDROOTARGS) clean
	$(MAKE) -C flasher-buildroot $(FLASHER_BUILDROOTARGS) clean
	rm -rf output
