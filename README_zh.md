# CMake Framework

基于 CMake 的用于 GCC 的编译框架。编译方式： **库 + 接口库 + app库 + main.c** 。

## 支持的特性

- 单工程编译
- 多工程同时编译
- menuconfig 配置
- 任意路径下工程编译
- 支持 x86、arm、risc-v GCC 编译器
- 支持所有平台编译：windows、linux、macOS

## 编译方式

- 单独编译两个 demo

```
cd examples/helloworld
make


cd examples/helloworld2
make
```

- 同时编译两个 demo

```
cd examples
make
```

## Menuconfig 使用

当前只是让 **menuconfig** 能够正常运行，剩下的就是一些用户的 **kconfig** 编写

```
cd examples/helloworld
make menuconfig


cd examples/helloworld2
make menuconfig
```