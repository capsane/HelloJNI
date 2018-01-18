LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_PACKAGE_NAME := HelloJNI

LOCAL_RESOURCE_DIR := \
        $(LOCAL_PATH)/res

LOCAL_JNI_SHARED_LIBRARIES := libsimp
LOCAL_REQUIRED_MODULES := libsimp

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
include $(BUILD_MULTI_PREBUILT)
