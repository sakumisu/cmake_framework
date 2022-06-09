cmake_minimum_required(VERSION 3.15)

file(READ proj.conf PROJ_CONFIG)
message("PROJ_CONFIG:${PROJ_CONFIG}")

message("examples/helloworld start")

find_package(xxx_sdk REQUIRED HINTS $ENV{SDK_BASE})

# sdk_set_linker_script(template.ld)
# target_sources(app PRIVATE xxxx.c xxxx2.c)

sdk_set_main_file(main.c)

project(helloworld2)

message("examples/helloworld end")
