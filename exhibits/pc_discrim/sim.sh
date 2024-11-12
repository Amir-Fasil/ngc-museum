#!/bin/sh
################################################################################
# Simulate the PCN on the MNIST database
################################################################################
DATA_DIR="../../data"

rm -r exp/* ## clear out experimental directory
python train_pcn.py  --dataX="$DATA_DIR/AG_trainX_compressed.npz" \
                     --dataY="$DATA_DIR/AG_trainY_compressed.npz" \
                     --devX="$DATA_DIR/AG_testX_compressed.npz" \
                     --devY="$DATA_DIR/AG_testY_compressed.npz" \
                     --verbosity=0
