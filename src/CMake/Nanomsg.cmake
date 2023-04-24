include(ExternalProject)
include(FetchContent)

set(NANOMSG_GIT_TAG 1.2)  # 指定版本
set(NANOMSG_GIT_URL https://github.com/nanomsg/nanomsg.git)

FetchContent_Declare(nanomsg                             # 库名字
                GIT_REPOSITORY ${NANOMSG_GIT_URL}        # 仓库地址
                GIT_TAG ${NANOMSG_GIT_TAG}               # 库版本
)

FetchContent_MakeAvailable(nanomsg)
include_directories(${nanomsg_SOURCE_DIR}/src)