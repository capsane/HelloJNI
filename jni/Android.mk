LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng

LOCAL_SRC_FILES:= \
    simp.cpp

# 我艹，这个竟然成了？string的问题
LOCAL_C_INCLUDES += \
	$(JNI_H_INCLUDE) \
	external/stlport/stlport \
	bionic \

LOCAL_STATIC_LIBRARIES := libstlport_static

LOCAL_MODULE := libsimp
LOCAL_MODULE_TAGS := optional
# LOCAL_SHARED_LIBRARIES := \
# 	libutils liblog libcutils
# LOCAL_CFLAGS += -O0 -g3

include $(BUILD_SHARED_LIBRARY)
