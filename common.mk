TOPDIR ?= ..
include $(TOPDIR)/conf.mk

CXXFLAGS+=$(EXTRA_CXXFLAGS) -m32 -Wall -fPIC -fno-stack-protector
LNFLAGS+=$(EXTRA_LNFLAGS) -m32 -L/usr/lib32

ifeq ($(BUILD_RELEASE),yes)
CXXFLAGS+=$(RELEASE_CXXFLAGS)
LNFLAGS+=$(RELEASE_LNFLAGS)
else
CXXFLAGS+=$(DEBUG_CXXFLAGS)
LNFLAGS+=$(DEBUG_LNFLAGS)
endif

LUAJIT_CXXFLAGS=-I$(LUAJIT)/include/luajit-2.0
LUAJIT_LNFLAGS=-L$(LUAJIT)/lib
LUAJIT_LIBS=-lluajit-5.1

