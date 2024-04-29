# Locate SFML library
# This module defines:
#  SFML_FOUND, if false, do not try to link to SFML
#  SFML_INCLUDE_DIR, where to find SFML headers
#  SFML_LIBRARIES, the libraries to link against
#  SFML_VERSION_STRING, human-readable SFML version

# Try to find SFML and store its location and libraries
# in SFML_INCLUDE_DIR, SFML_LIBRARIES variables.
# If found, also set SFML_FOUND to TRUE.

# Check if the user provided a hint for SFML location
if(DEFINED SFML_ROOT)
    set(SFML_ROOT_HINT HINTS ${SFML_ROOT})
endif()

# Try to find SFML in the default system path
find_package(SFML 2.5 COMPONENTS graphics window system ${SFML_ROOT_HINT})

# Provide error message if SFML is not found
if(NOT SFML_FOUND)
    message(FATAL_ERROR "SFML not found. Make sure SFML is installed and set SFML_ROOT to the SFML installation directory.")
endif()

