# Basic dexpreopt
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := false
    WITH_DEXPREOPT_BOOT_IMG_ONLY := false
  endif
endif
