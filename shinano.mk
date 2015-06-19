# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, device/sony/leo/aosp_d6603.mk)

PRODUCT_NAME := shinano
PRODUCT_DEVICE := shinano
PRODUCT_MODEL := Xperia Z3 (B2G)

GAIA_DEV_PIXELS_PER_PX := 2.25

BOOTANIMATION_ASSET_SIZE := 1080p

vendor_binary_files := $(strip $(wildcard vendor/sony/shinano/shinano-partial.mk))
ifeq ($(vendor_binary_files),)
  $(error Vendor binary files are not found. Please download from: \
  http://developer.sonymobile.com/downloads/tool/software-binaries-for-aosp-lollipop-android-5-1/ \
  then extract in B2G dir and try again.)
endif

$(call inherit-product-if-exists, vendor/sony/shinano-blobs/shinano-vendor-blobs.mk)