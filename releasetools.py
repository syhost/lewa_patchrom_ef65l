# Copyright (C) 2012 The Android Open Source Project
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

import common
import re
import os

TARGET_DIR = os.getenv('OUT')

def Thanks(info):
	info.script.AppendExtra('ui_print("=============================================");')
	info.script.AppendExtra('ui_print("       Thanks:");')
	info.script.AppendExtra('ui_print("    tenfar,zhaochengw,cofface");')
	info.script.AppendExtra('ui_print("    xuefy,suky,crazyi,windxixi,");')
	info.script.AppendExtra('ui_print("    wangsai008,bingo1991");')
	info.script.AppendExtra('ui_print("=============================================");')

def FullOTA_Assertions(info):
	Thanks(info)
	AddBasebandAssertion(info, info.input_zip)

def IncrementalOTA_Assertions(info):
	Thanks(info)
	AddBasebandAssertion(info, info.input_zip)
	
def AddBasebandAssertion(info, input_zip):
	info.script.AppendExtra('ui_print("Get Baseband Version:");')
	info.script.script.append(info.script._WordWrap('package_extract_file("system/etc/init.qcom.baseband.sh", "/tmp/init.qcom.baseband.sh");'))
	info.script.AppendExtra('ui_print(" ");')
	info.script.script.append(info.script._WordWrap('set_perm(0, 0, 0777, "/tmp/init.qcom.baseband.sh");'))
	info.script.script.append(info.script._WordWrap('unmount("/persist");'))
	info.script.script.append(info.script._WordWrap('mount("ext4", "EMMC", "/dev/block/mmcblk0p15", "/persist");'))
	info.script.script.append(info.script._WordWrap('unmount("/data");'))
	info.script.script.append(info.script._WordWrap('mount("ext4", "EMMC", "/dev/block/mmcblk0p14", "/data");'))
	info.script.script.append(info.script._WordWrap('run_program("/tmp/init.qcom.baseband.sh");'))
	info.script.AppendExtra('ui_print(" ");')
	info.script.script.append(info.script._WordWrap('run_program("cat", "/persist/.baseband");'))
	info.script.script.append(info.script._WordWrap('unmount("/data");'))
	info.script.script.append(info.script._WordWrap('unmount("/persist");'))
	info.script.AppendExtra('ui_print(" ");')


