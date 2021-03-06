/*
 * Copyright (c) 2017 Trail of Bits, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

TEST_BEGIN_64(LDMXCSR_MEMd, 1)
TEST_INPUTS(0)
    push ARG1_64;
    ldmxcsr dword ptr [rsp];
TEST_END_64

#if HAS_FEATURE_AVX

TEST_BEGIN_64(VLDMXCSR_MEMd, 1)
TEST_INPUTS(0)
    push ARG1_64;
    vldmxcsr dword ptr [rsp];
TEST_END_64

#endif  // HAS_FEATURE_AVX

TEST_BEGIN_64(STMXCSR_MEMd, 1)
TEST_INPUTS(0)
    push ARG1_64;
    stmxcsr dword ptr [rsp];
TEST_END_64

#if HAS_FEATURE_AVX

TEST_BEGIN_64(VSTMXCSR_MEMd, 1)
TEST_INPUTS(0)
    push ARG1_64;
    vstmxcsr dword ptr [rsp];
TEST_END_64

#endif  // HAS_FEATURE_AVX