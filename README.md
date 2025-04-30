# 1. dmcpp-env

C++ CMake 模块化项目环境

## 1.1. 项目简介
这是一个用于管理C++项目依赖的模块化环境，基于CMake构建系统。它提供了大量常用库和工具的集成，方便快速搭建C++开发环境。

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

如何在项目中引用已经 cmake 模块化的项目
```cmd
git submodule add -f https://github.com/brinkqiang/dmtimer ./thirdparty/dmtimer
```

```
INCLUDE(cmake/ModuleImport.cmake)

ModuleImport("dmtimer" "thirdparty/dmtimer")

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
   - [dmdb](https://github.com/brinkqiang/dmdb) - mysql orm 复杂
   - [dmredispp](https://github.com/brinkqiang/dmredispp) - redis client
   - [dmmongo-cxx-driver](https://github.com/brinkqiang/dmmongo-cxx-driver) - mongo client
   - [dmotl](https://github.com/brinkqiang/dmotl) - otl是一个C++数据库操作库，用于访问各种类型的数据库

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

4.  **模板引擎**
    - [dmtemplate](https://github.com/brinkqiang/dmtemplate) 模板引擎库
    - [dminja](https://github.com/brinkqiang/dminja) - 模板引擎库

5. **内存池与对象管理**
   - [dmgperftools](https://github.com/brinkqiang/dmgperftools) - google tcmalloc及相关工具链
   - [dmmimalloc](https://github.com/brinkqiang/dmmimalloc) - 微软 mimalloc
   - [dmrapidpool](https://github.com/brinkqiang/dmrapidpool) - 对象池, 算法来源于loki

6. **网络与通信**
   - [dmdyad](https://github.com/brinkqiang/dmdyad) - 极简socket库 用于熟悉socket流程
   - [dmmail](https://github.com/brinkqiang/dmmail) - mail客户端 可任意ID发送邮件(gmail有检测, 不行, 163 qq可以)
   - [dmicmp](https://github.com/brinkqiang/dmicmp) - icmp(ping)
   - [dmcurl](https://github.com/brinkqiang/dmcurl) - curl and curlpp
   - [dmcpr](https://github.com/brinkqiang/dmcpr) - 基于curl网络请求库, 类似 Python Requests
   - [dmcinatra](https://github.com/brinkqiang/dmcinatra) - http
   - [luaftpserver](https://github.com/brinkqiang/luaftpserver) - C++实现的Lua模块 FTP服务器
   - [luaftp](https://github.com/brinkqiang/luaftp) - C++实现的Lua模块 FTP客户端

7. **任务与流程管理**
   - [dmtimer](https://github.com/brinkqiang/dmtimer) - 跨平台timer
   - [dmflags](https://github.com/brinkqiang/dmflags) - 命令行参数解析
   - [dmcli11](https://github.com/brinkqiang/dmcli11) - 命令行参数解析
   - [dmsubprocess](https://github.com/brinkqiang/dmsubprocess) - 进程控制
   - [dmtaskflow](https://github.com/brinkqiang/dmtaskflow) - 任务工作流
   - [dmcrontask](https://github.com/brinkqiang/dmcrontask) - 跨平台 cron表达式 任务工具

8. **时间与日期**
   - [dmcctz](https://github.com/brinkqiang/dmcctz) - 时间处理
   - [dmdatetime](https://github.com/brinkqiang/dmdatetime) - 时间处理

9. **系统与工具库**
   - [dminfoware](https://github.com/brinkqiang/dminfoware) - 获取系统信息
   - [dmfilemonitor](https://github.com/brinkqiang/dmfilemonitor) - 文件夹监控
   - [dmzipper](https://github.com/brinkqiang/dmzipper) - zip压缩
   - [dmsnappy](https://github.com/brinkqiang/dmsnappy) - 压缩库
   - [dmwireshark-portable](https://github.com/brinkqiang/dmwireshark-portable) - wireshark 协议插件
   - [dmdetours](https://github.com/brinkqiang/dmdetours) - api hook
   - [dmblackbone](https://github.com/brinkqiang/dmblackbone) - Windows内存工具库支持进程交互、模块管理、线程操作、远程代码执行、挂钩、手动映射及驱动功能。
   - [dmlief](https://github.com/brinkqiang/dmlief) - 跨平台可执行格式抽象 自实现depends
   - [dmcmake-tools](https://github.com/brinkqiang/dmcmake-tools) - cmake-init 是一个自动扫描当前项目源码文件 生成对应的cmakelists的工具

10. **测试与模拟**
    - [dmtest](https://github.com/brinkqiang/dmtest) - test框架
    - [dmgmock](https://github.com/brinkqiang/dmgmock) - mock框架
    - [dmfakeit](https://github.com/brinkqiang/dmfakeit) - 模拟测试框架

11. **数据格式**
    - [dmxml](https://github.com/brinkqiang/dmxml) - xml
    - [dmjson](https://github.com/brinkqiang/dmjson) - json
    - [dminicpp](https://github.com/brinkqiang/dminicpp) - ini
    - [dmcsv](https://github.com/brinkqiang/dmcsv) - csv
    - [dmrapidcsv](https://github.com/brinkqiang/dmrapidcsv) - csv
    - [dmxlsx](https://github.com/brinkqiang/dmxlsx) - xlsx
    - [dmyaml](https://github.com/brinkqiang/dmyaml) - yaml
    - [dmtoml](https://github.com/brinkqiang/dmtoml) - toml
    - [dmmsgpack](https://github.com/brinkqiang/dmmsgpack) - msgpack
    - [dmprotobuf](https://github.com/brinkqiang/dmprotobuf) - protobuf
    - [dmflatbuffers](https://github.com/brinkqiang/dmflatbuffers) - FlatBuffers
    - [dmrapidjson](https://github.com/brinkqiang/dmrapidjson) - rapidjson
    - [dmconfig](https://github.com/brinkqiang/dmconfig) - 数据中间件
    - [dmmsgparser](https://github.com/brinkqiang/dmmsgparser) - 协议中间件
    - [dmmarkdown](https://github.com/brinkqiang/dmmarkdown) - markdown转html

12. **跨语言开发**
    - [dmpybindpp](https://github.com/brinkqiang/dmpybindpp) - dmpybindpp
    - [dmsolpp](https://github.com/brinkqiang/dmsolpp) - sol2 bind in lua
    - [dmllvm-project](https://github.com/brinkqiang/dmllvm-project) - llvm
    - [dmcppast](https://github.com/brinkqiang/dmcppast) - C++ ast
    - [dmclang-pass](https://github.com/brinkqiang/dmclang-pass) - clang-pass
    - [dmswig](https://github.com/brinkqiang/dmswig) - swig

13. **lua模块**
    - [luatimer](https://github.com/brinkqiang/luatimer) - luatimer
    - [luapb](https://github.com/brinkqiang/luapb) - luapb
    - [luacrypto](https://github.com/brinkqiang/luacrypto) - luacrypto
    - [luaopenai](https://github.com/brinkqiang/luaopenai) - luaopenai
    - [luaftpserver ](https://github.com/brinkqiang/luaftpserver ) - luaftpserver 
    - [luaftp ](https://github.com/brinkqiang/luaftp ) - luaftp client 
    - [luasqlite3 ](https://github.com/brinkqiang/luasqlite3 ) - luasqlite3
    - [luaiconv](https://github.com/brinkqiang/luaiconv ) - luaiconv
    - [luafmt](https://github.com/brinkqiang/luafmt ) - luafmt
    - [luamail](https://github.com/brinkqiang/luamail ) - luamail
    - [luamysql](https://github.com/brinkqiang/luamysql ) - luamysql
    - [luaredis](https://github.com/brinkqiang/luaredis ) - luaredis
    - [luaprofiler](https://github.com/brinkqiang/luaprofiler ) - luaprofiler

14. **python模块**
    - [pytimer](https://github.com/brinkqiang/pytimer) - pytimer
    - [pycrypto](https://github.com/brinkqiang/luacrypto) - pycrypto

15. **数据结构与算法**
    - [dmastar](https://github.com/brinkqiang/dmastar) - A* 算法
    - [dmrecastnavigation](https://github.com/brinkqiang/dmrecastnavigation) - 导航网格
    - [dmbehaviac](https://github.com/brinkqiang/dmbehaviac) - game AI     
    - [dmbigint](https://github.com/brinkqiang/dmbigint) - uint256_t
    - [dmskiplist](https://github.com/brinkqiang/dmskiplist) - skiplist
    - [dmconsistent](https://github.com/brinkqiang/dmconsistent) - 一致性hash
    - [dmopenssl](https://github.com/brinkqiang/dmopenssl) - openssl

16. **唯一标识符生成**
    - [dmsnowflake](https://github.com/brinkqiang/dmsnowflake) - 唯一ID生成 uint64_t
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
  
19. **开发环境搭建**
    - [dmremote_development](https://github.com/brinkqiang/dmremote_development) - vscode 远程开发环境搭建 包含docker环境设置
    - [dmvcpkg](https://github.com/brinkqiang/dmvcpkg) - vcpkg 环境设置
    - [vscode-ssh](https://github.com/brinkqiang/vscode-ssh) - vscode 离线 ssh远程调试环境搭建

20. **网络库**
    - [dmuv](https://github.com/brinkqiang/dmuv) - libuv
    - [dmtarscpp](https://github.com/brinkqiang/dmtarscpp) - tarscpp
    - [dmzmqpp](https://github.com/brinkqiang/dmzmqpp) - zmq C++封装 中量级 功能较多
    - [dmcppzmq](https://github.com/brinkqiang/dmcppzmq) - zmq C++封装 有zmq_ipc 轻量级 纯头文件
    - [dmgrpc](https://github.com/brinkqiang/dmgrpc) - grpc

21. **其他**
    - [dmfake](https://github.com/brinkqiang/dmfake) - C++20 有状态模板元编程
    - [dmlibqrencode](https://github.com/brinkqiang/dmlibqrencode) - 二维码
    - [dmlibgo](https://github.com/brinkqiang/dmlibgo) - libgo
    - [dmasmjit](https://github.com/brinkqiang/dmasmjit) - asmjit
    - [dmiconv](https://github.com/brinkqiang/dmiconv) - 编码探测及自动化转换
    - [dmchsrc](https://github.com/brinkqiang/dmchsrc) - 命令行换源工具
    - [dmninja](https://github.com/brinkqiang/dmninja) - 小型构建系统
    - [dmopenaicpp](https://github.com/brinkqiang/dmopenaicpp) - C++ openai sdk
    - [dmgit2ssh](https://github.com/brinkqiang/dmgit2ssh) - git协议转换工具 支持https git协议互相转换, 在git仓库中执行即可
    - [dmprojectinfo](https://github.com/brinkqiang/dmprojectinfo) - 获取目录下所有源码文件信息, 为dmgen4cmake提供支持
    - [dmllamacpp](https://github.com/brinkqiang/dmllamacpp) - llamacpp
    - [dmwhispercpp](https://github.com/brinkqiang/dmwhispercpp) - whispercpp
    - [dmop](https://github.com/brinkqiang/dmop) - libop 按键鼠标模拟

22. **dmcpp-port 伟大航路**
    - [dmsolpp](https://github.com/brinkqiang/dmsolpp) - C++ bind lua 代码框架
    - [dmgen4sol](https://github.com/brinkqiang/dmgen4sol) - C++ bind lua 生成器

    - [dmpybindpp](https://github.com/brinkqiang/dmpybindpp) - C++ bind python 代码框架
    - [dmgen4pybind](https://github.com/brinkqiang/dmgen4pybind) - C++ bind python 生成器

    - [dmgen4node](https://github.com/brinkqiang/dmgen4node) - C++ bind nodejs 生成器
    - [dmgen4wasm](https://github.com/brinkqiang/dmgen4wasm) - C++ bind wasm 生成器

    - [dmcsharp-dmprojectinfo](https://github.com/brinkqiang/dmcsharp-dmprojectinfo) - C++ bind C# 流程例子
    - [dmgodemo](https://github.com/brinkqiang/dmgodemo) - C++ bind go swig 例子
    - [dmgen4cmake](https://github.com/brinkqiang/dmgen4cmake) - C++ cmake生成框架 可以自动化识别目录结构 生成对应的cmakelist相关文件

    - [dmgen4pymodule](https://github.com/brinkqiang/dmgen4pymodule) - C++ python模块生成器， 会直接生成对应的python模块框架
    - [dmgen4luamodule](https://github.com/brinkqiang/dmgen4luamodule) - C++ lua模块生成器， 会直接生成对应的lua模块框架

