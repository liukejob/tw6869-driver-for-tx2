ifneq ($(KERNELRELEASE),)
obj-m := tw686x.o
tw686x-y := tw686x-core.o tw686x-video.o tw686x-audio.o

else
KDIR ?=/home/liuke/work/project/tx2-generic/xingjianchangkong-tuxiangronghe/build/kernel

default:
	$(MAKE) -C $(KDIR) M=$$PWD

install:
	$(MAKE) -C $(KDIR) M=$$PWD modules_install
	depmod -a

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif
