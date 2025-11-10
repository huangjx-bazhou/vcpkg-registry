# 自定义vcpkg注册表

## vcpkg概览

vcpkg是一个免费的、开源的C/C++包管理器，由Microsoft和C++社区维护，运行在Windows、macOS和Linux上。它本质上是一个C++工具，使用C++和CMake脚本编写。它旨在解决管理C/C++库的独特痛点。

## 官方相关

- 官方网站: https://vcpkg.io/en/
- 官方注册表: https://github.com/microsoft/vcpkg.git
- 文档: https://learn.microsoft.com/en-us/vcpkg/
- vcpkg源代码: https://github.com/Microsoft/vcpkg-tool

## 目的

创建此vcpkg注册表有两个目的:

- 添加官方注册表中没有的端口
- 修改官方注册表中的端口
