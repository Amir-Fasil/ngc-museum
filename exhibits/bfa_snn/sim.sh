#!/bin/sh
################################################################################
# Simulate the BFA-SNN on the MNIST database
################################################################################
DATA_DIR="../../data/"

rm -r exp/* ## clear out experimental directory
python train_bfasnn.py  --dataX="$DATA_DIR/TrainX.npy" \
                        --dataY="$DATA_DIR/TrainY.npy" \
                        --devX="$DATA_DIR/ValidateX.npy" \
                        --devY="$DATA_DIR/ValidateY.npy" \
                        --verbosity=1
