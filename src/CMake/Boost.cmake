include(ExternalProject)
include(FetchContent)

set(BOOST_GIT_URL "https://github.com/boostorg/boost.git")
set(BOOST_GIT_TAG boost-1.82.0)

FetchContent_Declare(
  Boost
  GIT_REPOSITORY	${BOOST_GIT_URL}
  GIT_TAG			${BOOST_GIT_TAG}
)
FetchContent_MakeAvailable(Boost)

