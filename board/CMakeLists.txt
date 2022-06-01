message("board")

sdk_generate_library()
sdk_library_add_sources(board.c)
sdk_add_include_directories(.)