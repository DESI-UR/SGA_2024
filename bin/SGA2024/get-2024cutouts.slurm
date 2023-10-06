#! /bin/bash
#SBATCH -A desi
#SBATCH -C cpu
#SBATCH -o /pscratch/sd/b/barnerg/SGA2024/logs/2024cutouts.log
#SBATCH --mail-user=barnerg@duq.edu
#SBATCH --image=dstndstn/viewer-cutouts:test
#SBATCH --mail-type=ALL
#SBATCH -q regular
#SBATCH -N 2
#SBATCH -n 2
#SBATCH -t 02:00:00

# sbatch /global/homes/b/barnerg/SGA/bin/SGA2024/get-2024cutouts.slurm

time srun -n 2 -c 128 shifter /global/homes/b/barnerg/SGA/bin/SGA2024/get-2024cutouts.sh sga2020 128 maskbits
