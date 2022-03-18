#
# Copyright (C) 2020-2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit proprietary files
ifeq ($(TARGET_PRODUCT), aosp_m307fn)
    $(call inherit-product, vendor/samsung/m307fn/m307fn-vendor.mk)
endif

# Inherit from m30s device
$(call inherit-product, device/samsung/m30s/device.mk)

# Device identifier, this must come after all inclusion
PRODUCT_NAME := aosp_m307fn
PRODUCT_DEVICE := m30s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M307FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_GMS_CLIENTID_BASE := android-samsung
