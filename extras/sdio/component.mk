# Component makefile for extras/sdio
INC_DIRS += $(sdio_ROOT)..

# args for passing into compile rule generation
sdio_SRC_DIR = $(sdio_ROOT)

sdio_CFLAGS = $(CFLAGS)
ifdef SDIO_SPI_MUTEX
sdio_CFLAGS += -D_SPI_MUTEX=$(SDIO_SPI_MUTEX)
endif

$(eval $(call component_compile_rules,sdio))
