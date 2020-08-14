LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := media-ctl
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += -Wno-missing-field-initializers   
LOCAL_CFLAGS += -Wno-sign-compare
LOCAL_CFLAGS += -Wno-unused-parameter

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../.. \
    $(LOCAL_PATH)/../../include 

LOCAL_SRC_FILES := \
    libv4l2subdev.c libmediactl.c options.c media-ctl.c

include $(BUILD_EXECUTABLE)
