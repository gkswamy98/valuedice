# Copyright 2021 The Google Research Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

declare -a env_names=("$1")

expert_dir="./datasets/"
save_dir="./save/"
mkdir "../pillbox/learners/$1"

for env_name in "${env_names[@]}"
do
  for ((seed=0;seed<10;seed+=1))
  do
    for ((nt=1;nt<6;nt+=1))
    do
      echo $nt
      python -m value_dice.train_eval \
        --expert_dir $expert_dir \
        --save_dir $save_dir \
        --algo value_dice \
        --env_name $env_name \
        --seed $seed \
        --num_trajectories $nt \
        --alsologtostderr
    done
  done
done
