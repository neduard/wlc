# Find dbus
#
# DBUS_INCLUDE_DIR
# DBUS_LIBRARIES
# DBUS_FOUND

FIND_PATH(DBUS_SYSTEM_INCLUDES dbus/dbus.h PATH_SUFFIXES dbus-1.0)
FIND_PATH(DBUS_LIB_INCLUDES dbus/dbus-arch-deps.h PATHS /usr/lib/dbus-1.0/include)
SET(DBUS_INCLUDE_DIR ${DBUS_SYSTEM_INCLUDES} ${DBUS_LIB_INCLUDES})
FIND_LIBRARY(DBUS_LIBRARIES NAMES dbus-1)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(DBUS DEFAULT_MSG DBUS_INCLUDE_DIR DBUS_LIBRARIES)
mark_as_advanced(DBUS_INCLUDE_DIR DBUS_LIBRARIES)
