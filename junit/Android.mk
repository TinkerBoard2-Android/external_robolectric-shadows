###########################################
# Compile Robolectric junit
###########################################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := Robolectric_junit

LOCAL_JAVA_LIBRARIES := \
  Robolectric_annotations \
  Robolectric_shadowapi \
  Robolectric_sandbox \
  Robolectric_utils \
  robolectric-asm-commons-6.0 \
  robolectric-guava-25.1-jre \
  robolectric-asm-tree-6.0 \
  robolectric-hamcrest-core-1.3 \
  robolectric-junit-4.12 \
  robolectric-asm-6.0 \
  jsr305

LOCAL_SRC_FILES := $(call all-java-files-under, src/main/java)

include $(BUILD_HOST_JAVA_LIBRARY)
