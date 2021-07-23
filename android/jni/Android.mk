LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE := ts-prebuilt
LOCAL_SRC_FILES := ${LOCAL_PATH}/../../TenniS/android/libs/$(TARGET_ARCH_ABI)/libtennis.so
LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/../../TenniS/include/
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := seetaauthorize-prebuilt
LOCAL_SRC_FILES := ${LOCAL_PATH}/../../SeetaAuthorize/android/libs/$(TARGET_ARCH_ABI)/libSeetaAuthorize.so
LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/../../SeetaAuthorize/include/
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/../../SeetaAuthorize/include/hidden/
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := openrolezoo-prebuilt
LOCAL_SRC_FILES := ${LOCAL_PATH}/../../OpenRoleZoo/android/obj/local/$(TARGET_ARCH_ABI)/libORZ_static.a
LOCAL_EXPORT_C_INCLUDES += ${LOCAL_PATH}/../../OpenRoleZoo/include
include $(PREBUILT_STATIC_LIBRARY)


include $(LOCAL_PATH)/FaceBoxes.mk
include $(LOCAL_PATH)/FaceAntiSpoofingX.mk
include $(LOCAL_PATH)/FaceRecognizer.mk
include $(LOCAL_PATH)/FaceTracker.mk
include $(LOCAL_PATH)/Landmarker.mk
include $(LOCAL_PATH)/PoseEstimator.mk
include $(LOCAL_PATH)/QualityAssessor.mk
include $(LOCAL_PATH)/SeetaAgePredictor.mk
include $(LOCAL_PATH)/SeetaEyeStateDetector.mk
include $(LOCAL_PATH)/SeetaGenderPredictor.mk
include $(LOCAL_PATH)/SeetaMaskDetector.mk
