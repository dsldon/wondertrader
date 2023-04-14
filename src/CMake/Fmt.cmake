include(ExternalProject)
include(FetchContent)

set(FMT_GIT_TAG 9.1.0)  # 指定版本
set(FMT_GIT_URL https://github.com/fmtlib/fmt.git)

FetchContent_Declare(fmt                             # 库名字
                GIT_REPOSITORY ${FMT_GIT_URL}        # 仓库地址
                GIT_TAG ${FMT_GIT_TAG}               # 库版本
)

FetchContent_MakeAvailable(fmt)