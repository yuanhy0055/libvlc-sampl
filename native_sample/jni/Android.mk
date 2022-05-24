LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := native

LOCAL_CFLAGS    := -DANDROID_DEBUG

LOCAL_SRC_FILES := main.c

LIBVLC_LDLIBS := -L$(LOCAL_PATH)/libYYY -lvlc -lvlcjni

LOCAL_LDLIBS := ${LIBVLC_LDLIBS} -llog

LOCAL_C_INCLUDES := $(VLC_SRC_DIR)/include

include $(BUILD_SHARED_LIBRARY)
