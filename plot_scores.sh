#!/bin/bash

# Don't forget to `conda activate master-eval && pip inst^ -r requirements.txt` first

# Overview of Algorithms in different delay stages

python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-0 sac-delay-0 dcac-delay-1 -o all_delay_0 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-1 sac-delay-1 sac-is-delay-1 dcac-delay-1 -o all_delay_1 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-5 sac-delay-5 sac-is-delay-5 dcac-delay-5 -o all_delay_5 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-10 sac-delay-10 sac-is-delay-10 dcac-delay-10 -o all_delay_10 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-20 sac-delay-20 sac-is-delay-20 dcac-delay-20 -o all_delay_20 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-100-gpu sac-delay-100 sac-is-delay-100 dcac-delay-100 -o all_delay_100 --no-display

python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 dcac-delay-1 -o all-dats_delay_0 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-1 sac-is-delay-1 dcac-delay-1 -o all-dats_delay_1 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-5 sac-is-delay-5 dcac-delay-5 -o all-dats_delay_5 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-10 sac-is-delay-10 dcac-delay-10 -o all-dats_delay_10 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-20 sac-is-delay-20 dcac-delay-20 -o all-dats_delay_20 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-100 sac-is-delay-100 dcac-delay-100 -o all-dats_delay_100 --no-display

# Interalgorithm comparison

# SAC
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 sac-delay-1 sac-delay-5 sac-delay-10 sac-delay-20 sac-delay-100 -o sac-all-100 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 sac-delay-1 sac-delay-5 sac-delay-10 sac-delay-20 -o sac-all-20 --no-display

# SAC-IS
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-is-delay-0 sac-is-delay-1 sac-is-delay-5 sac-is-delay-10 sac-is-delay-20 sac-is-delay-100 -o sac-is-all-100 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-is-delay-0 sac-is-delay-1 sac-is-delay-5 sac-is-delay-10 sac-is-delay-20 -o sac-is-all-20 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 sac-is-delay-0 sac-is-delay-1 sac-is-delay-5 sac-is-delay-10 sac-is-delay-20 sac-is-delay-100 -o sac-is-all-100-baseline --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 sac-is-delay-0 sac-is-delay-1 sac-is-delay-5 sac-is-delay-10 sac-is-delay-20 -o sac-is-all-20-baseline --no-display

# DCAC
python -u plot.py -f logs/ --env zinc-coating-v0 -a dcac-delay-0 dcac-delay-1 dcac-delay-5 dcac-delay-10 dcac-delay-20 dcac-delay-100 -o dcac-all-100 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dcac-delay-0 dcac-delay-1 dcac-delay-5 dcac-delay-10 dcac-delay-20 -o dcac-all-20 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 dcac-delay-0 dcac-delay-1 dcac-delay-5 dcac-delay-10 dcac-delay-20 dcac-delay-100 -o dcac-all-100-baseline --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 dcac-delay-0 dcac-delay-1 dcac-delay-5 dcac-delay-10 dcac-delay-20 -o dcac-all-20-baseline --no-display

# DATS
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-0 dats-delay-1 dats-delay-5 dats-delay-10 dats-delay-20 dats-delay-100-gpu -o dats-all-100 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a dats-delay-0 dats-delay-1 dats-delay-5 dats-delay-10 dats-delay-20 -o dats-all-20 --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 dats-delay-0 dats-delay-1 dats-delay-5 dats-delay-10 dats-delay-20 dats-delay-100-gpu -o dats-all-100-baseline --no-display
python -u plot.py -f logs/ --env zinc-coating-v0 -a sac-delay-0 dats-delay-0 dats-delay-1 dats-delay-5 dats-delay-10 dats-delay-20 -o dats-all-20-baseline --no-display