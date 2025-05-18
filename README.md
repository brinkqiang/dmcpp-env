# 1. dmcpp-env

C++ CMake 模块化项目环境

---

## 1.1. 项目简介

**`dmcpp-env`：铸造C++数字航母的基石与罗盘**

C++以其卓越的性能和强大的控制力成为许多复杂系统的首选语言。然而，其开发环境的复杂性、跨平台开发中遇到的种种障碍，以及工具链整合的挑战，常常让开发者在项目初期就面临诸多困扰，分散了核心业务的注意力。

**开发者面临的主要痛点：**

1.  **环境配置繁琐**：管理数量众多、版本各异的第三方库，及其编译、链接过程，既耗时又容易出错。不稳定的环境配置常因微小变动而失效。
2.  **跨平台适配困难**：不同操作系统、API接口及编译器之间的差异，使得编写和维护行为一致的跨平台代码成本高昂，挑战巨大。
3.  **工具链整合耗时**：将编译器、调试器、分析工具等高效整合，并在团队及多设备间保持一致体验，需要大量额外投入。

**`dmcpp-env`的初衷与解决之道：**

为应对这些长期存在的痛点，`dmcpp-env`项目应运而生。其核心目标是为C++开发者提供一个**更纯粹、高效、易于掌控的模块化开发基座**，让开发者能最大程度地聚焦于业务逻辑实现和技术创新。

`dmcpp-env`主要通过以下方式应对挑战：

* **统一管理、精心筛选模块**：提供一套预先集成并经过测试的常用模块，减少开发者自行寻找、适配和解决冲突的负担。
* **标准化、简化构建流程**：基于CMake，并辅以自定义的模块导入机制，力求构建过程的简洁、高效与一致性。
* **提升跨平台一致性体验**：通过组件层面的封装和设计，尽可能屏蔽底层平台差异，简化跨平台开发工作。
* **降低环境搭建门槛**：帮助开发者快速获得一个功能齐备的开发环境，缩短项目启动时间，使其能迅速投入实际编码工作。

我们深知C++生态的完善是一项持续的努力。`dmcpp-env` 的存在，是希望通过提供一个经过深思熟虑的、高度整合的开发环境，切实减轻C++开发者的负担，助力他们更轻松、更高效地构建出稳定且强大的应用程序。

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

如何在项目中引用已经 cmake 模块化的项目
```cmd
git submodule add -f https://github.com/brinkqiang/dmtimer ./thirdparty/dmtimer
```

```
include(cmake/ModuleImport.cmake)

ModuleImport("dmtimer" "thirdparty/dmtimer")

```

如果不单独指定项目名字， 可使用如下代码， 会自动加载thirdparty目录所有项目
```
include(cmake/ModuleImport.cmake)

ModuleImportAll("thirdparty")

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
   - [dmzmqpp](https://github.com/brinkqiang/dmzmqpp) - zmq C++封装 中量级 功能较多
   - [dmcppzmq](https://github.com/brinkqiang/dmcppzmq) - zmq C++封装 有zmq_ipc 轻量级 纯头文件
   - [dmgrpc](https://github.com/brinkqiang/dmgrpc) - grpc   
   - [dmtarscpp](https://github.com/brinkqiang/dmtarscpp) - tarscpp       
   - [dmconfigserver](https://github.com/brinkqiang/dmconfigserver) - dmconfigserver

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
   - [dmop](https://github.com/brinkqiang/dmop) - 输入设备模拟库
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
    - [dmmsgpack](https://github.com/brinkqiang/dmmsgpack) - msgpack
    - [dmprotobuf](https://github.com/brinkqiang/dmprotobuf) - protobuf
    - [dmflatbuffers](https://github.com/brinkqiang/dmflatbuffers) - FlatBuffers

    - [dmmarkdown](https://github.com/brinkqiang/dmmarkdown) - markdown转html
    - [dmconfig](https://github.com/brinkqiang/dmconfig) - 数据中间件
    - [dmmsgparser](https://github.com/brinkqiang/dmmsgparser) - 协议中间件

    - [dmpropp](https://github.com/brinkqiang/dmpropp) - dmpropp 属性系统

12. **跨语言开发**
    - [dmpybindpp](https://github.com/brinkqiang/dmpybindpp) - dmpybindpp
    - [dmsolpp](https://github.com/brinkqiang/dmsolpp) - sol2 bind in lua
    - [dmlua](https://github.com/brinkqiang/dmlua) - lua framework
    - [dmllvm-project](https://github.com/brinkqiang/dmllvm-project) - llvm
    - [dmcppast](https://github.com/brinkqiang/dmcppast) - C++ ast dmcppast-export
    - [dmclang-pass](https://github.com/brinkqiang/dmclang-pass) - clang-pass
    - [dmswig](https://github.com/brinkqiang/dmswig) - swig

13. **lua模块**
    - [luatimer](https://github.com/brinkqiang/luatimer) - 定时器模块
    - [luapb](https://github.com/brinkqiang/luapb) - Protocol Buffers支持
    - [luacrypto](https://github.com/brinkqiang/luacrypto) - 加密算法模块
    - [luaopenai](https://github.com/brinkqiang/luaopenai) - OpenAI API绑定
    - [luasqlite3 ](https://github.com/brinkqiang/luasqlite3 ) - SQLite数据库绑定
    - [luaiconv](https://github.com/brinkqiang/luaiconv ) - 编码转换模块
    - [luafmt](https://github.com/brinkqiang/luafmt ) - 字符串格式化
    - [luamail](https://github.com/brinkqiang/luamail ) - 邮件发送模块
    - [luamysql](https://github.com/brinkqiang/luamysql ) - MySQL数据库绑定
    - [luaredis](https://github.com/brinkqiang/luaredis ) - Redis客户端绑定 
    - [luaprofiler](https://github.com/brinkqiang/luaprofiler ) - 性能分析工具
    - [luaftpserver](https://github.com/brinkqiang/luaftpserver) - FTP服务器(Lua模块)
    - [luaftp](https://github.com/brinkqiang/luaftp) - FTP客户端(Lua模块)
  
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
    - [dmlrucache](https://github.com/brinkqiang/dmlrucache) - cache替换算法

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
    - [dmvscode-cpp](https://github.com/brinkqiang/dmvscode-cpp) - vscode 调试设置

20. **工具与集成**
    - [dmlibqrencode](https://github.com/brinkqiang/dmlibqrencode) - 二维码生成
    - [dmiconv](https://github.com/brinkqiang/dmiconv) - 编码转换工具
    - [dmchsrc](https://github.com/brinkqiang/dmchsrc) - 命令行换源工具
    - [dmgit2ssh](https://github.com/brinkqiang/dmgit2ssh) - Git协议转换工具
    - [dmcmake-tools](https://github.com/brinkqiang/dmcmake-tools) - cmake-init 是一个自动扫描当前项目源码文件 生成对应的cmakelists的工具
    - [gitac](https://github.com/brinkqiang/gitac) - GitAutoCommit工具
21. **AI与机器学习**
    - [dmopenaicpp](https://github.com/brinkqiang/dmopenaicpp) - OpenAI SDK封装
    - [dmllamacpp](https://github.com/brinkqiang/dmllamacpp) - LLaMA模型推理
    - [dmwhispercpp](https://github.com/brinkqiang/dmwhispercpp) - 语音识别引擎
    - [dmbarkcpp](https://github.com/brinkqiang/dmbarkcpp) - bark
    - [dmstable-diffusioncpp](https://github.com/brinkqiang/dmstable-diffusioncpp) - stable-diffusion
    - [dmtinymcp](https://github.com/brinkqiang/dmtinymcp) - tinymcp

22. **代码生成与构建**
    - [dmninja](https://github.com/brinkqiang/dmninja) - 小型构建系统
    - [dmprojectinfo](https://github.com/brinkqiang/dmprojectinfo) - 源码文件分析工具
    - [dmgen4cmake](https://github.com/brinkqiang/dmgen4cmake) - CMake生成框架

23. **底层与系统编程**
    - [dmasmjit](https://github.com/brinkqiang/dmasmjit) - 汇编JIT引擎
    - [dmlibgo](https://github.com/brinkqiang/dmlibgo) - Go语言运行时集成
    - [dmfake](https://github.com/brinkqiang/dmfake) - 模板元编程框架

24. **dmcpp-port 伟大航路**
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
