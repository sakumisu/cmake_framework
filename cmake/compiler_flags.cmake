sdk_add_compile_options(
-fno-jump-tables
-fno-common
-fms-extensions
-ffunction-sections
-fdata-sections
-fmessage-length=0
-Wall
-Wchar-subscripts
-Wformat
-Wundef
-Wuninitialized
-Winit-self
-Wignored-qualifiers
-Wno-error=unused-variable
-Wno-error=deprecated-declarations
# -Wno-error=absolute-value
-Wno-error=type-limits
-Wno-error=cpp -Wextra
-Wno-unused-parameter
-Wno-sign-compare
-Wno-error=implicit-function-declaration
-MMD
$<$<COMPILE_LANGUAGE:C>:-Wno-old-style-declaration>
$<$<COMPILE_LANGUAGE:C>:-Wno-override-init>
# $<$<COMPILE_LANGUAGE:C>:-Wno-enum-conversion>
# $<$<COMPILE_LANGUAGE:C>:-Wno-cast-function-type>
$<$<COMPILE_LANGUAGE:C>:-std=gnu99>
$<$<COMPILE_LANGUAGE:CXX>:-std=c++11>
$<$<COMPILE_LANGUAGE:CXX>:-nostdlib>
$<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
$<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
)

sdk_add_link_options(
# -Wl,--cref
# -Wl,--gc-sections
# -nostartfiles
# -fms-extensions
# -ffunction-sections
# -fdata-sections
# --specs=nano.specs
)

sdk_add_link_libraries(c m)


sdk_add_compile_options_ifdef(CONFIG_DEBUG -g3)
sdk_add_compile_options(-O2)