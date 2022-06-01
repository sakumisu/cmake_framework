# CMake Framework

[中文版](README_zh.md)

This is a CMake framework for those who want to use GCC for command line compilation,especially for embedded field.The CMake framework building style is basically the current mainstream approach, such as Zephyr,esp-idf : only one project is built at a time and links with **library + interface library + app library**.Apart from this, use **kconfig** to modify some compile configurations.

## Compile demo

- Execute `source env.sh` in sdk root path

- Building two demos

```
cd examples/helloworld
make


cd examples/helloworld2
make
```

## Use menuconfig

Currently just let **menuconfig** work, the rest is some user's **kconfig**  codes.

```
cd examples/helloworld
make menuconfig


cd examples/helloworld2
make menuconfig
```