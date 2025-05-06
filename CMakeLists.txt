cmake_minimum_required(VERSION 3.21)

PROJECT(dmcpp-env)
INCLUDE(cmake/ModuleImport.cmake)
INCLUDE(cmake/ModuleCompileOptions.cmake)
ModuleSetCompileOptions()
ModuleSetWinCompilerFlags()

ModuleImport("dmtimer" "thirdparty/dmtimer")
