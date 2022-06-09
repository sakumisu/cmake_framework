cmake_minimum_required(VERSION 3.15)

# file(READ proj.conf PROJ_CONFIG)
# message("PROJ_CONFIG:${PROJ_CONFIG}")

message("examples/helloworld start")

find_package(xxx_sdk REQUIRED HINTS $ENV{SDK_BASE})

# sdk_set_linker_script(template.ld)
sdk_set_main_file(helloworld/main.c)

project(helloworld)

sdk_set_main_file(helloworld2/main.c)

project(helloworld2)

message("examples/helloworld end")
