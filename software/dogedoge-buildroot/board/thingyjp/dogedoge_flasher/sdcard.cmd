setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p1 rootwait quiet
ext4load mmc 0 ${kernel_addr_r} /boot/zImage
ext4load mmc 0 ${fdt_addr_r} /boot/sun8i-v3s-dogedoge.dtb
bootz ${kernel_addr_r} - ${fdt_addr_r}
