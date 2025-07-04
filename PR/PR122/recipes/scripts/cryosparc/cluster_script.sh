#!/usr/bin/env bash

#SBATCH --job-name=cryosparc_{{ project_uid }}_{{ job_uid }}
#SBATCH --cpus-per-task={{ num_cpu }}
#SBATCH --gres=gpu:{{ num_gpu }}
#SBATCH --mem={{ ram_gb|int }}G
#SBATCH --comment="created by {{ cryosparc_username }}"
#SBATCH --output={{ job_dir_abs }}/{{ project_uid }}_{{ job_uid }}_slurm.out
#SBATCH --error={{ job_dir_abs }}/{{ project_uid }}_{{ job_uid }}_slurm.err
#SBATCH -p mit_normal_gpu

{{ run_cmd }}
