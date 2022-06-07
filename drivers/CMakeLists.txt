message("drivers")

sdk_generate_library()
sdk_library_add_sources(src/uart.c)
sdk_library_add_sources_ifdef(CONFIG_SPI src/spi.c)
sdk_add_include_directories(include)
sdk_add_compile_definitions(CHIP=xxx)
sdk_add_compile_definitions_ifdef(CONFIG_DEBUG DEBUG)

if(${TOOLCHAIN_PREFIX} MATCHES "arm")
# set(MCPU "cortex-m7")
# set(MFPU "fpv4-sp-d16")
# set(MFLOAT_ABI "hard")

# sdk_add_compile_options(-mcpu=${MCPU} -mthumb -mfpu=${MFPU} -mfloat-abi=${MFLOAT_ABI})
# sdk_add_link_options(-mcpu=${MCPU} -mthumb -mfpu=${MFPU} -mfloat-abi=${MFLOAT_ABI})
elseif(${TOOLCHAIN_PREFIX} MATCHES "riscv")
# set(MCPU "riscv-e24")
# set(MARCH "rv32imafc")
# set(MABI "ilp32f")

# sdk_add_compile_options(-march=${MARCH} -mabi=${MABI} -mtune=${MCPU})
# sdk_add_link_options(-march=${MARCH} -mabi=${MABI} -mtune=${MCPU})
else()

endif()



# sdk_set_linker_script(xxx.ld)
