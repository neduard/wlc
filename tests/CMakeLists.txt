set(tests
   resources)

include_directories(${wlc_SOURCE_DIR}/src ${WLC_INCLUDE_DIRS} ${wlc_SOURCE_DIR}/lib/chck/src)
foreach (test ${tests})
   add_executable(${test}_test ${test}.c)
   target_link_libraries(${test}_test ${WLC_LIBRARY} ${WLC_LIBRARIES})
   add_test_ex(${test}_test)
endforeach()
