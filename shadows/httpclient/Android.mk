##############################################
# Compile Robolectric shadows httpclient
##############################################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := Robolectric_shadows_httpclient

LOCAL_JAVA_LIBRARIES := \
  Robolectric_shadows_framework \
  Robolectric_annotations \
  Robolectric_shadowapi \
  Robolectric_utils \
  robolectric-host-org_apache_http_legacy \
  robolectric-host-android_all \
  robolectric-httpclient-4.0.3 \
  robolectric-httpcore-4.0.1 \
  robolectric-javax.annotation-api-1.2

LOCAL_ANNOTATION_PROCESSORS := \
  Robolectric_annotations \
  Robolectric_processor \
  robolectric-asm-commons-6.0 \
  robolectric-guava-25.1-jre \
  robolectric-asm-tree-6.0 \
  robolectric-gson-2.8 \
  robolectric-asm-6.0

LOCAL_ANNOTATION_PROCESSOR_CLASSES := org.robolectric.annotation.processing.RobolectricProcessor

LOCAL_JAVACFLAGS := -Aorg.robolectric.annotation.processing.shadowPackage=org.robolectric.shadows.httpclient

LOCAL_SRC_FILES := $(call all-java-files-under, src/main/java)

include $(BUILD_HOST_JAVA_LIBRARY)

##############################################
# Compile Robolectric shadows httpclient tests
##############################################
include $(CLEAR_VARS)

LOCAL_MODULE := Robolectric_shadows_httpclient_tests

LOCAL_SRC_FILES := $(call all-java-files-under, src/test/java)

LOCAL_JAVA_RESOURCE_DIRS := src/test/resources

LOCAL_JAVA_LIBRARIES := \
  Robolectric_shadows_httpclient \
  Robolectric_shadows_framework \
  Robolectric_annotations \
  Robolectric_robolectric \
  Robolectric_resources \
  Robolectric_shadowapi \
  Robolectric_junit \
  Robolectric_utils \
  robolectric-host-org_apache_http_legacy \
  robolectric-host-android_all \
  robolectric-httpclient-4.0.3 \
  robolectric-httpcore-4.0.1 \
  robolectric-guava-25.1-jre \
  robolectric-junit-4.12 \
  robolectric-truth-0.42 \
  jsr305

include $(BUILD_HOST_JAVA_LIBRARY)

##############################################
# Execute Robolectric shadows httpclient tests
##############################################
include $(CLEAR_VARS)

LOCAL_MODULE := Run_robolectric_shadows_httpclient_tests

test_source_directory := $(LOCAL_PATH)/src/test/java

test_resources_directory := $(LOCAL_PATH)/src/test/resources

test_runtime_libraries := \
  Robolectric_shadows_httpclient_tests \
  Robolectric_shadows_httpclient \
  Robolectric_shadows_framework \
  Robolectric_annotations \
  Robolectric_robolectric \
  Robolectric_resources \
  Robolectric_shadowapi \
  Robolectric_sandbox \
  Robolectric_junit \
  Robolectric_utils \
  robolectric-host-monitor-1.0.2-alpha1 \
  robolectric-maven-ant-tasks-2.1.3 \
  robolectric-bouncycastle-1.46 \
  robolectric-hamcrest-core-1.3 \
  robolectric-host-android_all \
  robolectric-httpclient-4.0.3 \
  robolectric-asm-commons-6.0 \
  robolectric-httpcore-4.0.1 \
  robolectric-guava-25.1-jre \
  robolectric-asm-tree-6.0 \
  robolectric-junit-4.12 \
  robolectric-truth-0.42 \
  robolectric-ant-1.8.0 \
  robolectric-asm-6.0 \
  jsr305 \
  robolectric-host-org_apache_http_legacy

include external/robolectric-shadows/run_robolectric_module_tests.mk