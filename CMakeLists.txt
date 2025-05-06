cmake_minimum_required(VERSION 3.21)

project(dmcpp-env)
include(cmake/ModuleImport.cmake)
include(cmake/ModuleCompileOptions.cmake)
ModuleSetCompileOptions()
ModuleSetWinCompilerFlags()

ModuleImport("dmtimer" "thirdparty/dmtimer")
