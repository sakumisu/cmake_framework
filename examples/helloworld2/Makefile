# The command to remove a file.
RM = cmake -E remove_directory

#cmake definition config
cmake_definition+= -DTOOLCHAIN_PREFIX=
cmake_definition+= -DCONFIG_COMPONENT1=y
cmake_definition+= -DCONFIG_COMPONENT2=y
cmake_definition+= -DCONFIG_COMPONENT3=y

build:Makefile
	cmake -S . -B build -G "Unix Makefiles" $(cmake_definition)
	cd build && make -j4

clean:
	$(RM) build

menuconfig:
	python ../../tools/kconfig/menuconfig.py

.PHONY:build clean menuconfig

