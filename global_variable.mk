PROJECT_NAME             := cpp-application
PROJECT_VERSION          := 1.0.0

LIB_HEADER               := $(PROJECT_DIR)/libs/

INCLUDE                  := -I$(PROJECT_DIR)/include -I$(LIB_HEADER)
CC                       := g++

CPP_STANDARD             := -std=gnu++1y -static-libstdc++
WARNINGS                 := -Wuninitialized -Wall -Wno-deprecated-declarations -Wno-pmf-conversions

OPT_OPTION               := DNO_RREPLY
LOG_OPTION               := -DLOG_USE_EN=1

ifeq ($(DEBUG), true)
	CFLAGS       := -O0 -g -msse4.2
else
    CFLAGS       := -O3 -msse4.2 -fvisibility=hidden -fvisibility-inlines-hidden -s
	OPT_OPTION   := -DNDEBUG
endif

ifeq ($(STATIC_CHECK), true)
    CC           := clang++ -\#\#\#
	WARNINGS     := -w
	CFLAGS       := -O0 -msse4.2
endif

SRC_PATH                  := $(PROJECT_DIR)/src

