# dmcpp-env


# C++ cmake 模块化项目

如何在项目中引用已经 cmake 模块化的项目
```cmd
git submodule add -f https://github.com/brinkqiang/dmcrontask ./thirdparty/dmcrontask
```

```
INCLUDE(cmake/ModuleImport.cmake)

ModuleImport("dmcrontask" "thirdparty/dmcrontask")

```


1. **日志和调试**
   - [dmlog](https://github.com/brinkqiang/dmlog) - log
   - [dmbacktrace](https://github.com/brinkqiang/dmbacktrace) - 获取调用堆栈
   - [dmdump](https://github.com/brinkqiang/dmdump) - dump抓取
   - [dmwrk](https://github.com/brinkqiang/dmwrk) - http压测工具

2. **数据存储**
   - [dmsqlitepp](https://github.com/brinkqiang/dmsqlitepp) - sqlite
   - [dmleveldb](https://github.com/brinkqiang/dmleveldb) - kv数据库
   - [dmorm](https://github.com/brinkqiang/dmorm) - mysql orm 简单
   - [dmdb](https://github.com/brinkqiang/dmdb) - mysql orm 复杂
   - [dmredispp](https://github.com/brinkqiang/dmredispp) - redis client
   - [dmmongo-cxx-driver](https://github.com/brinkqiang/dmmongo-cxx-driver) - mongo client

3. **数据生成与处理**、
   - [dmformat](https://github.com/brinkqiang/dmformat) - fmtlib
   - [dmexprtk](https://github.com/brinkqiang/dmexprtk) - 数学表达式
   - [dmstrtk](https://github.com/brinkqiang/dmstrtk) - 字符串操作
   - [dmcronpp](https://github.com/brinkqiang/dmcronpp) - cron表达式- 
   - [dmcpplinq](https://github.com/brinkqiang/dmcpplinq) - linq 表达式
   - [dmmagicenum](https://github.com/brinkqiang/dmmagicenum) - 字符串 枚举转换库
   - [dmnameof](https://github.com/brinkqiang/dmnameof) - 获取变量、类型、函数、宏和枚举的名称
   - [dmscn](https://github.com/brinkqiang/dmscn) - C++ scanf 
   - [dmmatchitcpp](https://github.com/brinkqiang/dmmatchitcpp) - match表达式
   - [dmmathiucpp](https://github.com/brinkqiang/dmmathiucpp) - 数学表达式 基于dmmatchitcpp
  

4.  **模板引擎**
    - [dmtemplate](https://github.com/brinkqiang/dmtemplate) 模板引擎库
    - [dminja](https://github.com/brinkqiang/dminja) - 模板引擎库

5. **内存池与对象管理**
   - [dmgperftools](https://github.com/brinkqiang/dmgperftools) - google tcmalloc及相关工具链
   - [dmmimalloc](https://github.com/brinkqiang/dmmimalloc) - 微软 mimalloc
   - [dmrapidpool](https://github.com/brinkqiang/dmrapidpool) - 对象池

6. **网络与通信**
   - [dmdyad](https://github.com/brinkqiang/dmdyad) - 极简socket库 用于熟悉socket流程
   - [dmmail](https://github.com/brinkqiang/dmmail) - mail客户端
   - [dmicmp](https://github.com/brinkqiang/dmicmp) - icmp(ping)
   - [dmzmqpp](https://github.com/brinkqiang/dmzmqpp) - zmq
   - [dmcurl](https://github.com/brinkqiang/dmcurl) - curl and curlpp
   - [dmcpr](https://github.com/brinkqiang/dmcpr) - 基于curl网络请求库, 类似 Python Requests
   - [dmtarscpp](https://github.com/brinkqiang/dmtarscpp) - tars
   - [dmcinatra](https://github.com/brinkqiang/dmcinatra) - http
   - [luaftpserver](https://github.com/brinkqiang/luaftpserver) - C++实现 lua模块 ftpserver 服务器
   - [luaftp](https://github.com/brinkqiang/luaftp) - C++实现 lua模块 luaftp 客户端

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

9.  **系统与工具库**
   - [dminfoware](https://github.com/brinkqiang/dminfoware) - 获取系统信息
   - [dmfilemonitor](https://github.com/brinkqiang/dmfilemonitor) - 文件夹监控
   - [dmzipper](https://github.com/brinkqiang/dmzipper) - zip压缩
   - [dmsnappy](https://github.com/brinkqiang/dmsnappy) - 压缩库
   - [dmwireshark-portable](https://github.com/brinkqiang/dmwireshark-portable) - wireshark 协议插件

10. **测试与模拟**
    - [dmbreakpad](https://github.com/brinkqiang/dmbreakpad) - 跨平台crash
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

12. **跨语言开发**
    - [dmpybind11](https://github.com/brinkqiang/dmpybind11) - pybind11
    - [dmsolpp](https://github.com/brinkqiang/dmpybind11) - sol2 bind in lua
    - [dmllvm-project](https://github.com/brinkqiang/dmllvm-project) - llvm
    - [dmcppast](https://github.com/brinkqiang/dmcppast) - C++ ast
    - [dmclang-pass](https://github.com/brinkqiang/dmclang-pass) - clang-pass

13. **数据结构与算法**
    - [dmastar](https://github.com/brinkqiang/dmastar) - A* 算法
    - [dmrecastnavigation](https://github.com/brinkqiang/dmrecastnavigation) - 导航网格
    - [dmbehaviac](https://github.com/brinkqiang/dmbehaviac) - game AI     
    - [dmbigint](https://github.com/brinkqiang/dmbigint) - uint256_t
    - [dmskiplist](https://github.com/brinkqiang/dmskiplist) - skiplist
    - [dmconsistent](https://github.com/brinkqiang/dmconsistent) - 一致性hash
    - [dmopenssl](https://github.com/brinkqiang/dmopenssl) - openssl

14. **唯一标识符生成**
    - [dmsnowflake](https://github.com/brinkqiang/dmsnowflake) - 唯一ID生成 uint64_t
    - [dmuuid](https://github.com/brinkqiang/dmuuid) - uuid生成

15. **进度与状态**
    - [dmindicators](https://github.com/brinkqiang/dmindicators) - 进度条
    - [dmtabulate](https://github.com/brinkqiang/dmtabulate) - 表格制作

16. **设计模式与架构**
    - [dmdesignpattern](https://github.com/brinkqiang/dmdesignpattern) - 设计模式
    - [dmfruit](https://github.com/brinkqiang/dmfruit) - 依赖注入
    - [dmentitascpp](https://github.com/brinkqiang/dmentitascpp) - 实体组件系统

17. **开发环境搭建**
    - [dmremote_development](https://github.com/brinkqiang/dmremote_development) - vscode 远程开发环境搭建 包含docker环境设置
    - [dmvcpkg](https://github.com/brinkqiang/dmvcpkg) - vcpkg 环境设置
    - [vscode-ssh](https://github.com/brinkqiang/vscode-ssh) - vscode 离线 ssh远程调试环境搭建

18. **网络库**
    - [dmuv](https://github.com/brinkqiang/dmuv) - libuv
    - [dmtarscpp](https://github.com/brinkqiang/dmtarscpp) - tarscpp
    - [dmcppzmq](https://github.com/brinkqiang/dmcppzmq) - zmq


18. **其他**

    - [dmfake](https://github.com/brinkqiang/dmfake) - C++20 有状态模板元
    - [dmlibqrencode](https://github.com/brinkqiang/dmlibqrencode) - 二维码
    - [dmlibgo](https://github.com/brinkqiang/dmlibgo) - libgo
    - [dmasmjit](https://github.com/brinkqiang/dmasmjit) - asmjit
    - [dmiconv](https://github.com/brinkqiang/dmiconv) - 编码探测及自动化转换
    - [dmchsrc](https://github.com/brinkqiang/dmchsrc) - 命令行换源工具
    - [dmninja](https://github.com/brinkqiang/dmninja) - 小型构建系统
    - [dmopenaicpp](https://github.com/brinkqiang/dmopenaicpp) - C++ openai sdk
    - [dmgit2ssh](https://github.com/brinkqiang/dmgit2ssh) - git协议转换工具

