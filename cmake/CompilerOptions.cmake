set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic")

if(CMAKE_CXX_COMPILER_ID MATCHES "(Apple)?[Cc]lang")
  add_link_options(-fuse-ld=lld)

  if((CMAKE_BUILD_TYPE STREQUAL "Debug") OR (CMAKE_BUILD_TYPE STREQUAL
                                             "RelWithDebInfo"))
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fstandalone-debug")
  endif()
endif()

if((CMAKE_BUILD_TYPE STREQUAL "Release") OR (CMAKE_BUILD_TYPE STREQUAL
                                             "RelWithDebInfo"))
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -flto")
endif()
