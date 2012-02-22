include /vobs/jem/test/Rules.make

MODULE_NAME=tiny_tty

BUILDDIR_ARM_V6_GENERIC=/vobs/linuxjava/platform/build/ti_kernel/arm/arm_v6_vfp_le/h3gref/linux_build

obj-m := $(MODULE_NAME).o

default all: modules

modules:
#	make -C $(BUILDDIR_ARM_V6_GENERIC) ARCH=arm CC=$(CC) LD=$(LD) SUBDIRS=$(shell pwd) -I $(INCLUDEDIR) -I $(BUILDDIR_ARM_V6_GENERIC) modules
	make -C $(BUILDDIR_ARM_V6_GENERIC) ARCH=arm CC=$(CC) LD=$(LD) SUBDIRS=$(shell pwd) modules

clean distclean:
	rm -f *.o *.mod.c .*.*.cmd *.ko
	rm -rf .tmp_versions

