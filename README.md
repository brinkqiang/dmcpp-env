# 1. dmcpp-env

C++ CMake 模块化项目环境

- [Issues](https://github.com/brinkqiang/dmcpp-env/issues) - issues论坛

---

## 1.1. 项目简介

**`dmcpp-env`：铸造C++数字航母的基石与罗盘** 🧭✨

C++ 性能卓越，控制强大 💪，但其开发环境的复杂、跨平台障碍及工具链整合难题，常让开发者头疼不已 🤯，难以专注核心业务。

**主要痛点一览：** 😩
1.  **环境配置繁琐**：第三方库众多，版本管理与编译链接耗时易错 ⏳。
2.  **跨平台适配困难**：操作系统、API及编译器差异导致代码维护成本高，行为难统一 🌍🚧。
3.  **工具链整合耗时**：确保开发工具在团队和多设备间的一致性与流畅性，需专门投入 🛠️🧩。

**`dmcpp-env`的初心与解决之道：** 🎯
为应对这些痛点，`dmcpp-env` 旨在提供一个**更纯粹、高效、易掌控的模块化C++开发基座**，让开发者聚焦业务逻辑与技术创新 💡。

`dmcpp-env` 这样做：
* **统一管理模块**：预集成常用模块，简化依赖 📦✅。
* **标准构建流程**：CMake加持，提升构建效率与一致性 ⚙️🚀。
* **优化跨平台体验**：封装设计，减少平台差异困扰 💻🌍📱。
* **降低上手门槛**：快速搭建环境，专注编码 🧑‍💻💨。

`dmcpp-env` 的存在，就是希望通过一个高度整合的开发环境，切实减轻C++开发者负担，助力更轻松、高效地构建稳定强大的应用程序 ✨🚀。

---

## 1.2. 快速开始

### 1.2.1. 环境要求
- CMake 3.21+
- C++17 编译器
- Git

### 1.2.2. 安装依赖
```cmd
git submodule update --init --recursive
```

### 1.2.3. 构建项目
```cmake
mkdir build
cd build
cmake ..
make
```

## 如何引用已经cmake模块化的项目

### 参考项目
- https://github.com/brinkqiang/dmstringtest

1. 将项目中 cmake 目录整个copy到你的项目中
2. 在你的CMakeLists.txt中 project的下方加入以下代码
```cmake
include(cmake/ModuleImport.cmake)
include(cmake/ModuleCompileOptions.cmake)
ModuleSetCompileOptions()

ModuleImportAll("thirdparty")
```
3. 以dmstring 这个简单的项目为例, 在项目的根目录执行下面命令添加子模块, 如果有网络问题 拿到源码直接copy到thirdparty目录也是一样的.
```bash
git submodule add -f https://github.com/brinkqiang/dmstring ./thirdparty/dmstring
```
4. 在你的项目中指定链接这个库, 如果你是非模块化的项目, 可以用target_link_libraries指定

```
cmake_minimum_required(VERSION 3.21)

PROJECT(dmstringtest)

LIST(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
INCLUDE(cmake/ModuleImport.cmake)
INCLUDE(cmake/ModuleCompileOptions.cmake)
ModuleSetCompileOptions()

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_SHARED_LIBRARY_PREFIX "")

ModuleImportAll("thirdparty")

if(PROJECT_IS_TOP_LEVEL)
    ExeImport("test" "dmtest;dmstring")
endif()

```

## 1.3. 模块列表

1. **日志和调试**
   - [dmlog](https://github.com/brinkqiang/dmlog) - 基于spdlog的日志库
   - [dmbacktrace](https://github.com/brinkqiang/dmbacktrace) - 获取调用堆栈
   - [dmdump](https://github.com/brinkqiang/dmdump) - dump抓取
   - [dmwrk](https://github.com/brinkqiang/dmwrk) - http压测工具
   - [dmbreakpad](https://github.com/brinkqiang/dmbreakpad) - 跨平台crash
  
2. **数据存储**
   - [dmsqlitepp](https://github.com/brinkqiang/dmsqlitepp) - SQLite数据库封装
   - [dmleveldb](https://github.com/brinkqiang/dmleveldb) - kv数据库
   - [dmorm](https://github.com/brinkqiang/dmorm) - mysql orm 简单
   - [dmredispp](https://github.com/brinkqiang/dmredispp) - redis client
   - [dmmongo-cxx-driver](https://github.com/brinkqiang/dmmongo-cxx-driver) - mongo client
   - [dmotl](https://github.com/brinkqiang/dmotl) - otl是一个C++数据库操作库，用于访问各种类型的数据库
   - [dmsqlpp11](https://github.com/brinkqiang/dmsqlpp11) - 领域特定语言 (EDSL) 的orm模板库

3. **数据生成与处理**
   - [dmformat](https://github.com/brinkqiang/dmformat) - fmtlib
   - [dmexprtk](https://github.com/brinkqiang/dmexprtk) - 数学表达式
   - [dmstrtk](https://github.com/brinkqiang/dmstrtk) - 字符串操作
   - [dmcronpp](https://github.com/brinkqiang/dmcronpp) - cron表达式解析
   - [dmcpplinq](https://github.com/brinkqiang/dmcpplinq) - linq 表达式
   - [dmmagicenum](https://github.com/brinkqiang/dmmagicenum) - 字符串 枚举转换库
   - [dmnameof](https://github.com/brinkqiang/dmnameof) - 获取变量、类型、函数、宏和枚举的名称
   - [dmscn](https://github.com/brinkqiang/dmscn) - C++ scanf 
   - [dmmatchitcpp](https://github.com/brinkqiang/dmmatchitcpp) - match表达式
   - [dmmathiucpp](https://github.com/brinkqiang/dmmathiucpp) - 数学表达式 基于dmmatchitcpp
   - [dmlexy](https://github.com/brinkqiang/dmlexy) - 词法分析器
   - [dmstring](https://github.com/brinkqiang/dmstring) - 常用字符串函数
   - [dmabseil-cpp](https://github.com/brinkqiang/dmabseil-cpp) - google基础库

4.  **模板引擎**
   - [dminja](https://github.com/brinkqiang/dminja) - 模板引擎库

5. **内存池与对象管理**
   - [dmgperftools](https://github.com/brinkqiang/dmgperftools) - google tcmalloc及相关工具链
   - [dmmimalloc](https://github.com/brinkqiang/dmmimalloc) - 微软 mimalloc
   - [dmrapidpool](https://github.com/brinkqiang/dmrapidpool) - 对象池, 算法来源于loki

6. **网络与通信**
   - [dmdyad](https://github.com/brinkqiang/dmdyad) - 极简socket库 用于熟悉socket流程
   - [dmicmp](https://github.com/brinkqiang/dmicmp) - icmp(ping)
   - [dmcurl](https://github.com/brinkqiang/dmcurl) - curl and curlpp
   - [dmcpr](https://github.com/brinkqiang/dmcpr) - 基于curl网络请求库, 类似 Python Requests
   - [dmcinatra](https://github.com/brinkqiang/dmcinatra) - http
   - [dmzmqpp](https://github.com/brinkqiang/dmzmqpp) - zmq C++封装 中量级 功能较多
   - [dmcppzmq](https://github.com/brinkqiang/dmcppzmq) - zmq C++封装 有zmq_ipc 轻量级 纯头文件
   - [dmgrpc](https://github.com/brinkqiang/dmgrpc) - grpc   
   - [dmtarscpp](https://github.com/brinkqiang/dmtarscpp) - tarscpp       

7. **任务与流程管理**
   - [dmtimer](https://github.com/brinkqiang/dmtimer) - 跨平台timer
   - [dmcli11](https://github.com/brinkqiang/dmcli11) - 单头文件命令行参数解析库
   - [dmsubprocess](https://github.com/brinkqiang/dmsubprocess) - 进程控制
   - [dmtaskflow](https://github.com/brinkqiang/dmtaskflow) - 任务工作流
   - [dmcrontask](https://github.com/brinkqiang/dmcrontask) - 跨平台 cron表达式 任务工具
   - [dmtask](https://github.com/brinkqiang/dmtask) - 简化版 C++17/20 task then 


8. **时间与日期**
   - [dmcctz](https://github.com/brinkqiang/dmcctz) - 时间处理
   - [dmdatetime](https://github.com/brinkqiang/dmdatetime) - 时间处理

9. **系统与工具库**
   - [dminfoware](https://github.com/brinkqiang/dminfoware) - 获取系统信息
   - [dmzipper](https://github.com/brinkqiang/dmzipper) - zip压缩
   - [dmsnappy](https://github.com/brinkqiang/dmsnappy) - 压缩库
   - [dmvfspp](https://github.com/brinkqiang/dmvfspp) - 虚拟文件系统


10. **测试与模拟**
   - [dmtest](https://github.com/brinkqiang/dmtest) - test框架
   - [dmgmock](https://github.com/brinkqiang/dmgmock) - mock框架
   - [dmfakeit](https://github.com/brinkqiang/dmfakeit) - 模拟测试框架

11. **数据格式**
   - [dmxml](https://github.com/brinkqiang/dmxml) - xml
   - [dminicpp](https://github.com/brinkqiang/dminicpp) - ini
   - [dmcsv](https://github.com/brinkqiang/dmcsv) - csv
   - [dmrapidcsv](https://github.com/brinkqiang/dmrapidcsv) - csv

   - [dmjson](https://github.com/brinkqiang/dmjson) - nlohmann_json
   - [dmjsoncpp](https://github.com/brinkqiang/dmjsoncpp) - jsoncpp
   - [dmrapidjson](https://github.com/brinkqiang/dmrapidjson) - rapidjson

   - [dmxlsx](https://github.com/brinkqiang/dmxlsx) - xlsx
   - [dmyaml](https://github.com/brinkqiang/dmyaml) - yaml
   - [dmtoml](https://github.com/brinkqiang/dmtoml) - toml
   - [dmprotobuf](https://github.com/brinkqiang/dmprotobuf) - protobuf
   - [dmflatbuffers](https://github.com/brinkqiang/dmflatbuffers) - FlatBuffers

   - [dmmarkdown](https://github.com/brinkqiang/dmmarkdown) - markdown转html

   - [dmpropp](https://github.com/brinkqiang/dmpropp) - dmpropp 属性系统

12. **跨语言开发**
   - [dmsolpp](https://github.com/brinkqiang/dmsolpp) - sol2 bind in lua
   - [dmlua](https://github.com/brinkqiang/dmlua) - lua framework

13. **lua模块**
   - [luatimer](https://github.com/brinkqiang/luatimer) - 定时器模块
   - [luapb](https://github.com/brinkqiang/luapb) - Protocol Buffers支持
   - [luacrypto](https://github.com/brinkqiang/luacrypto) - 加密算法模块
   - [luasqlite3 ](https://github.com/brinkqiang/luasqlite3 ) - SQLite数据库绑定
   - [luaiconv](https://github.com/brinkqiang/luaiconv ) - 编码转换模块
   - [luafmt](https://github.com/brinkqiang/luafmt ) - 字符串格式化
   - [luamysql](https://github.com/brinkqiang/luamysql ) - MySQL数据库绑定
   - [luaredis](https://github.com/brinkqiang/luaredis ) - Redis客户端绑定 

14. **python模块**
   - [pytimer](https://github.com/brinkqiang/pytimer) - pytimer
   - [pycrypto](https://github.com/brinkqiang/luacrypto) - pycrypto

15. **数据结构与算法**
   - [dmastar](https://github.com/brinkqiang/dmastar) - A* 算法
   - [dmrecastnavigation](https://github.com/brinkqiang/dmrecastnavigation) - 导航网格
   - [dmbigint](https://github.com/brinkqiang/dmbigint) - uint256_t
   - [dmopenssl](https://github.com/brinkqiang/dmopenssl) - openssl

16. **唯一标识符生成**
   - [dmsnowflake](https://github.com/brinkqiang/dmsnowflake) - 唯一ID生成 uint64_t 无依赖
   - [dmuuid](https://github.com/brinkqiang/dmuuid) - uuid生成

17. **进度与状态**
   - [dmindicators](https://github.com/brinkqiang/dmindicators) - 进度条
   - [dmtabulate](https://github.com/brinkqiang/dmtabulate) - 表格制作

18. **设计模式与架构**
   - [dmdesignpattern](https://github.com/brinkqiang/dmdesignpattern) - 设计模式
   - [dmfruit](https://github.com/brinkqiang/dmfruit) - 依赖注入
   - [dmentitascpp](https://github.com/brinkqiang/dmentitascpp) - 实体组件系统
   - [dmentt](https://github.com/brinkqiang/dmentt) - 实体组件系统
   - [dmproxy](https://github.com/brinkqiang/dmproxy) - 代理模式
   - [dmeventpp](https://github.com/brinkqiang/dmeventpp) - eventpp

19. **开发环境搭建**
   - [dmremote_development](https://github.com/brinkqiang/dmremote_development) - vscode 远程开发环境搭建 包含docker环境设置
   - [dmvcpkg](https://github.com/brinkqiang/dmvcpkg) - vcpkg 环境设置
   - [vscode-ssh](https://github.com/brinkqiang/vscode-ssh) - vscode 离线 ssh远程调试环境搭建
   - [dmvscode-cpp](https://github.com/brinkqiang/dmvscode-cpp) - vscode 调试设置

20. **工具与集成**
   - [dmlibqrencode](https://github.com/brinkqiang/dmlibqrencode) - 二维码生成
   - [chsrc-win](https://github.com/brinkqiang/chsrc-win) - 命令行换源工具
   - [dmgit2ssh](https://github.com/brinkqiang/dmgit2ssh) - Git协议转换工具
   - [dmcmake-tools](https://github.com/brinkqiang/dmcmake-tools) - 通过分析当前工程目录下的源码信息, 自动化组织CMakeLists.txt及相关设置
   - [gitac](https://github.com/brinkqiang/gitac) - GitAutoCommit工具

21. **代码生成与构建**
   - [dmninja](https://github.com/brinkqiang/dmninja) - 小型构建系统

22. **底层与系统编程**
   - [dmasmjit](https://github.com/brinkqiang/dmasmjit) - 汇编JIT引擎
   - [dmlibgo](https://github.com/brinkqiang/dmlibgo) - Go语言运行时集成
   - [dmfake](https://github.com/brinkqiang/dmfake) - 模板元编程框架
  
23. **Windows平台补丁**
   - [dmfix_win_utf8](https://github.com/brinkqiang/dmfix_win_utf8) - 解决Windows平台中文编码乱码问题。
   - [dmfix_win_console](https://github.com/brinkqiang/dmfix_win_console) - 解决Windows平台控制台颜色设置无效问题。

24. **dmcpp-port 伟大航路**
   - [dmcpp-port](https://github.com/brinkqiang/dmcpp-port) - 跨语言解决方案

