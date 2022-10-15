SDK_DEMO_PATH = .

SDK_BASE ?= ${SDK_DEMO_PATH}/../..

export SDK_BASE

CROSS_COMPILE ?=
#cmake definition config
cmake_definition+= -DCROSS_COMPILE=${CROSS_COMPILE}
cmake_definition+= -DCONFIG_COMPONENT1=y
cmake_definition+= -DCONFIG_COMPONENT2=y
cmake_definition+= -DCONFIG_COMPONENT3=y
cmake_definition+= -DCONFIG_SPI=y

include $(SDK_BASE)/project.build

