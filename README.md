# valuedice
Fork of ValueDICE code that supports discrete action spaces, PyBullet, and is truly off-policy.

## Setup
To install dependencies, run:
```bash
conda env create -f environment.yml
```

## Running Experiments
To train an expert, run:
```bash
./value_dice/run_experiments.sh "env_name"
```
