#!/bin/bash

SCRIPT_PATH=$(dirname $(realpath -s $0))

args=()
get_n_jobs=false
for (( i=1; i<=$#; i++ )); do
    args+=(${!i})
    if [[ ${!i} == "--n-jobs" ]]; then
        get_n_jobs=true
    elif [[ $get_n_jobs == true ]]; then
        n_jobs=${!i}
        get_n_jobs=false
    fi
done
if [[ ! -v n_jobs ]]; then
    n_jobs=64
    args+=("--n-jobs" "$n_jobs")
fi
mem="$((n_jobs*2))g"
sbatch \
--cpus-per-task=$n_jobs \
--mem=$mem \
--partition=ccr,norm \
--time=48:00:00 \
$SCRIPT_PATH/run_select_model_slurm.sh "${args[@]}"