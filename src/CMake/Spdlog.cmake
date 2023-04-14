include(ExternalProject)
include(FetchContent)

set(SPDLOG_GIT_TAG v1.11.0)  # 指定版本
set(SPDLOG_GIT_URL https://github.com/gabime/spdlog.git)

FetchContent_Declare(spdlog                             # 库名字
                GIT_REPOSITORY ${SPDLOG_GIT_URL}        # 仓库地址
                GIT_TAG ${SPDLOG_GIT_TAG}               # 库版本
)

FetchContent_MakeAvailable(spdlog)
target_include_directories(spdlog INTERFACE ${spdlog_SOURCE_DIR}/include)
include_directories(${spdlog_SOURCE_DIR}/include)
