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
   - [dmcrontask](https://github.com/brinkqiang/dmcrontask) - 跨平台 cron表达式 任务工具
   - [dmtimer](https://github.com/brinkqiang/dmtimer) - 跨平台timer
   - [dmcpr](https://github.com/brinkqiang/dmcpr) - curl封装 httpserver httpclient