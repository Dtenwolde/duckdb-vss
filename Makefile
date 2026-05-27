PROJ_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Configuration of extension
EXT_NAME=vss
EXT_CONFIG=${PROJ_DIR}extension_config.cmake

# Stabilize all tests in CI
ifdef CI
TEST_FLAGS:=--stabilize-tests
endif
T ?= $(TEST_FLAGS) "test/*"

# Include the Makefile from extension-ci-tools
include extension-ci-tools/makefiles/duckdb_extension.Makefile

unittest_relassert:
	python3 duckdb/scripts/ci/run_tests.py build/relassert/test/unittest $(T)
