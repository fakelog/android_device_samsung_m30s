#
# Copyright (C) 2020-2021 The LineageOS Project
# Copyright (C) 2022 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/m30s

# Inherit from the common tree
include device/samsung/m30s-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
ifeq ($(TARGET_PRODUCT), aosp_m307f)
	include vendor/samsung/m307f/BoardConfigVendor.mk
else ifeq ($(TARGET_PRODUCT), aosp_m307f)
	include vendor/samsung/m307fn/BoardConfigVendor.mk
endif

# OTA
ifeq ($(TARGET_PRODUCT), aosp_m307f)
	TARGET_OTA_ASSERT_DEVICE := m307f,m30s,m30sdd
else ifeq ($(TARGET_PRODUCT), aosp_m307f)
	TARGET_OTA_ASSERT_DEVICE := m307fn,m30s,m30sxx
endif

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/device_manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
