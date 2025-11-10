# TODO: 分析ANN.h文件中的#ifdef WIN32代码块，根据其在Windows操作系统和其他操作系统下的行为，
# 决定是否修改或者删除以下代码和vcpkg.json文件里的"supports"表达式
vcpkg_check_linkage(ONLY_DYNAMIC_LIBRARY ONLY_DYNAMIC_CRT)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO MITK/ANN
    REF a76f6010432789c3c7e0d78c45e66a1cd268cf85
    SHA512 ed78b89b8528cf6b9636f3b81af2c864696215e7b39d7017e2bf7092a4a982e98a15d82760d08a8e9c2802afea08b10ae51cb2b140f6f0ecdc1c3c0d0f8397a5
    HEAD_REF v1.1.2-patched
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/ANN)

vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/License.txt")