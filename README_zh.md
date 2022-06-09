# CMake Framework

这是一个服务于那些喜欢命令行方式进行 GCC 开发的人,尤其是嵌入式领域的 CMake 框架。该 CMake 框架构建方式也是现在比较主流的，比如 Zephyr、esp-idf ：一次只能编译一个工程（ 本框架可以实现一次同时编译多个工程 ），并且以 **库 + 接口库 + app库** 的形式链接。除此之外，使用 **kconfig** 进行一些配置的修改。

## 编译方式

- 在根目录下执行 `source env.sh`,注意这个只在当前终端生效

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