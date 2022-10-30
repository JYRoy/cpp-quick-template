cur_makefile_path    := $(notdir $(shell pwd))

include ../global_variable.mk

LIB_NAME_LIST        := module1 module2
COMPILE_PATH         := $(foreach lib_name,$(LIB_NAME_LIST),$(SRC_PATH)/$(lib_name))

SRC_INCLUDE          := $(INCLUDE)

.PHONY               := everything all objs clean veryclean rebuild mkdir

all : $(COMPILE_PATH)

clean :
    $(foreach each_dir,$(COMPILE_PATH), rm -rf $(each_dir)/objs*;)

$(COMPILE_PATH) :
    make DEBUG=$(DEBUG) -C $@ -j