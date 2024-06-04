cmake_minimum_required(VERSION 3.8)

PROJECT(dmcpp-env)
INCLUDE(cmake/ModuleImport.cmake)
INCLUDE(cmake/ModuleCompileOptions.cmake)
ModuleSetCompileOptions()
ModuleSetWinCompilerFlags()

ModuleImport("dmbreakpad" "thirdparty/dmbreakpad")
