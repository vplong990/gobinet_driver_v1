obj-m := GobiNet.o
GobiNet-objs := GobiUSBNet.o QMIDevice.o QMI.o

PWD := $(shell pwd)
OUTPUTDIR=/lib/modules/`uname -r`/kernel/drivers/net/usb/

#ifeq ($(ARCH),)
#EARCH := $(shell uname -m)
#endif
#ifeq ($(CROSS_COMPILE),)
#CROSS_COMPILE :=
#endif
#ifeq ($(KDIR),)
KDIR := /lib/modules/$(shell uname -r)/build
#endif

default:
#	ln -sf makefile Makefile
	#$(MAKE) ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C $(KDIR) M=$(PWD) modules
	$(MAKE)  CROSS_COMPILE=${CROSS_COMPILE} -C $(KDIR) M=$(PWD) modules

clean:
	rm -rf Makefile
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions Module.* modules.order
