#!/bin/bash

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

./oss.py --all --google3-filter --no-subst --fix-oss-headers ../cmake
./oss.py --all --no-subst --fix-oss-headers .
./oss.py --all --google3-filter --no-subst --fix-oss-headers --no-recurse ..
./oss.py --google3-filter --fix-oss-headers --proto-lite-runtime ..
cd ..
/google/bin/releases/opensource/thirdparty/cross/cross .