SET(SOURCES_LIST
	test_ODBWorker.cpp
)

UNIPAX_ADD_TESTS("UNIPAX/PERSISTENCE" ${SOURCES_LIST})

# for searching lokal MOCKS subdirectories:
INCLUDE_DIRECTORIES("UNIPAX/PERSISTENCE/MOCKS")