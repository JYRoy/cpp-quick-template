cur_makefile_path    := $(notdir $(shell pwd))

include $(PROJECT_DIR)/global_variable.mk

OBJS_DIR             := objs

CPP_STANDARD         := -Wl, --version-script=symbol.version

CXXFLAGS             := $(WARNINGS) $(CPP_STANDARD) $(CFLAGS)
LIB_SO_NAME          := libcommon.so

.PHONY               := everything all objs clean veryclean rebuild mkdir

all : mkdir libcommon

libcommon :
    $(CC) $(CXXFLAGS) $(WARNINGS) (OPT_OPTION) $(LOG_OPTION) -fPIC --shared -o $(LIB_SO_NAME)