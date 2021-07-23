LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libSeetaPoseEstimation600-prebuilt
LOCAL_SRC_FILES := ${LOCAL_PATH}/../../PoseEstimator6/PoseEstimation/android/obj/local/$(TARGET_ARCH_ABI)/libSeetaPoseEstimation600.so
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/../../PoseEstimator6/PoseEstimation/include
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/../../PoseEstimator6/PoseEstimation/include/seeta
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := SeetaPoseEstimation600_java

LOCAL_CFLAGS += -DSEETA_MODEL_ENCRYPT

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/../../SeetaFace6JNI/PoseEstimator6/*.cpp)

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include

LOCAL_LDFLAGS += -L$(LOCAL_PATH)/../../lib

LOCAL_LDLIBS += -llog -lz

ifeq ($(TARGET_ARCH_ABI), armeabi-v7a)
    LOCAL_CFLAGS += -mfloat-abi=softfp
endif

LOCAL_CFLAGS += -mfpu=neon-vfpv4 -funsafe-math-optimizations -ftree-vectorize  -ffast-math

LOCAL_SHARED_LIBRARIES += ts-prebuilt

LOCAL_SHARED_LIBRARIES += seetaauthorize-prebuilt

LOCAL_STATIC_LIBRARIES += openrolezoo-prebuilt

LOCAL_STATIC_LIBRARIES += libSeetaPoseEstimation600-prebuilt
include $(BUILD_SHARED_LIBRARY)