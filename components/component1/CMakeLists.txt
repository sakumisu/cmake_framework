message("component1")

sdk_generate_library()
sdk_library_add_sources(component1.c)
sdk_add_include_directories(.)