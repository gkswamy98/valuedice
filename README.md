# valuedice
Fork of ValueDICE code that supports discrete action spaces, PyBullet, and is truly off-policy.

## Setup
To install dependencies, run:
```bash
conda env create -f environment.yml
```
To download expert data, run:
```bash
cd ..
git clone https://github.com/gkswamy98/pillbox.git
```

## Running Experiments
To train a learner:
```bash
./value_dice/run_experiments.sh "env_name"
```
