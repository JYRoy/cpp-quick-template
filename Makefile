PROJECT_DIR               := $(shell pwd)

include global_variable.mk

OUTPUT                    := ./bin
COMPILE_PATH              := $(SRC_PATH)
.PHONY                    := everythig objs clean veryclean rebuild debug

all : $(COMPILE_PATH)

release : build.sh
    ./build.sh DEBUG=false

debug : build.sh
    ./build.sh DEBUG=true

clean :
    rm -rf ./src/objs* ./src/*.o ./src/*.d
	rm -rf $(OUTPUT)


$(COMPILE_PATH) :
    make DEBUG=$(DEBUG) -C $@ -j

