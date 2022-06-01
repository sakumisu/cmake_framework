message("component2")

sdk_generate_library()
sdk_library_add_sources(component2.c)
sdk_add_include_directories(.)