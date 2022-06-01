message("drivers")

sdk_generate_library()
sdk_library_add_sources(src/uart.c)
sdk_library_add_sources_ifdef(CONFIG_SPI src/spi.c)
sdk_add_include_directories(include)
sdk_add_compile_definitions(CHIP=xxx)
sdk_add_compile_definitions_ifdef(CONFIG_DEBUG DEBUG)
sdk_add_compile_options(-O2)
sdk_add_compile_options_ifdef(CONFIG_DEBUG -g3)

sdk_add_link_libraries(c)