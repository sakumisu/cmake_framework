cmake_minimum_required(VERSION 3.15)

file(READ proj.conf PROJ_CONFIG)
message("PROJ_CONFIG:${PROJ_CONFIG}")

message("examples/helloworld start")

find_package(xxx_sdk REQUIRED HINTS $ENV{SDK_BASE})

project(helloworld2)

target_sources(app PRIVATE main.c)

message("examples/helloworld end")
