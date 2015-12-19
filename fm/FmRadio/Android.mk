LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := FmRadio
LOCAL_JNI_SHARED_LIBRARIES := libfmjni

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_PRIVILEGED_MODULE := true

LOCAL_JAVA_LIBRARIES += framework

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))

