#
# Copyright (C) 2017 The LineageOS Project
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

# inherit from common trlte
include device/samsung/trlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := trltechn,trltechnzh,trlteduos,trlteduosctc,trlteduoszc,trlteduoszh,trlteduoszn

# Fingerprint
BUILD_FINGERPRINT := samsung/trlteduoszh/trltechnzh:6.0.1/MMB29M/N9100ZHU1DQG1:user/release-keys

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_trlte_chnduos_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_trlteduos
TARGET_RECOVERY_DEVICE_MODULES := libinit_trlteduos

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19922944
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3472883712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11874054144

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/trlte-common/releasetools

# Radio/RIL
include $(COMMON_PATH)/radio/dual/board.mk

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/trlteduos/sepolicy

# inherit from the proprietary version
-include vendor/samsung/trlteduos/BoardConfigVendor.mk
