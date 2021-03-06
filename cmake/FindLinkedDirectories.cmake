macro(ADD_LINKED_DIRECTORY NEW_DIR)
	IF(NOT LINKED_DIRECTORIES)
		SET(LINKED_DIRECTORIES "${NEW_DIR}")
	ELSE()
		IF("${LINKED_DIRECTORIES}" MATCHES "${NEW_DIR}+")
		ELSE()
			SET(LINKED_DIRECTORIES "${LINKED_DIRECTORIES};${NEW_DIR}")
		ENDIF()
	ENDIF()
        LINK_DIRECTORIES(${LINKED_DIRECTORIES})
endmacro(ADD_LINKED_DIRECTORY) 

macro(ADD_LIB_LINKED_DIR NEW_LIB)
	GET_FILENAME_COMPONENT(NEW_DIR ${NEW_LIB} PATH)
	ADD_LINKED_DIRECTORY(${NEW_DIR})
endmacro(ADD_LIB_LINKED_DIR)
