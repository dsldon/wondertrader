
#1. 确定CMake的最低版本需求
CMAKE_MINIMUM_REQUIRED(VERSION ${CMAKE_MINIMUM_VERIONS})

#2. 确定工程名
PROJECT(WtTester LANGUAGES CXX)
SET(CMAKE_CXX_STANDARD 11)

SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/build_${PLATFORM}/${CMAKE_BUILD_TYPE}/bin/WtBtRunner)

SET(LIBS
	WtBtCore
	WTSTools
	WTSUtils
	Boost::thread
	Boost::filesystem
)

#添加源码
file(GLOB SRCS *.cpp)
file(GLOB HDRS *.h)

IF(MSVC)
	list (APPEND SRCS ../Common/mdump.cpp)
ENDIF()

#9. 生成可执行文件
ADD_EXECUTABLE(WtBtRunner ${SRCS} ${HDRS})
TARGET_LINK_LIBRARIES(WtBtRunner ${LIBS})

IF (MSVC)
ELSE (GNUCC)
	SET_TARGET_PROPERTIES(WtBtRunner PROPERTIES
        LINK_FLAGS_RELEASE -s)
ENDIF ()

#SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/build_${PLATFORM}/${CMAKE_BUILD_TYPE}/bin/WtBtPorter)
#ADD_EXECUTABLE(TestBtPorter ../TestBtPorter/TestBtPorter.cpp)
#TARGET_LINK_LIBRARIES(TestBtPorter ${LIBS})

