include(ExternalProject)
include(FetchContent)

## compatible with c++20
set(RAPIDJSON_TAG 27c3a8dc0e2c9218fe94986d249a12b5ed838f1d) # 指定版本

set(RAPIDJSON_GIT_URL https://github.com/Tencent/rapidjson.git)      # 指定git仓库地址

FetchContent_Declare(rapidjson			# 库名字
  GIT_REPOSITORY ${RAPIDJSON_GIT_URL}	# 仓库地址
  GIT_TAG ${RAPIDJSON_TAG}				# 库版本
)

FetchContent_MakeAvailable(rapidjson)
add_library(rapidjson INTERFACE)
include_directories(rapidjson INTERFACE ${rapidjson_SOURCE_DIR}/include)