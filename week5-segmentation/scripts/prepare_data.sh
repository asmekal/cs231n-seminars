#!/usr/bin/env bash
# binary classification

export WORKDIR=./logs
export DATADIR=./data/Artelab  # /path/to/dataset
export DATASET_DIR=$WORKDIR/datasets/Artelab  # /path/to/save/processed/dataset

mkdir -p $WORKDIR
mkdir -p $DATASET_DIR

cp -R $DATADIR/* $DATASET_DIR/

#mv $DATASET_DIR/raw_masks $DATASET_DIR/masks

python data_processing/image2mask.py \
    --in-dir $DATASET_DIR \
    --out-dataset $DATASET_DIR/dataset_raw.csv

catalyst-data split-dataframe \
    --in-csv $DATASET_DIR/dataset_raw.csv \
    --n-folds=3 --train-folds=0,1 \
    --out-csv=$DATASET_DIR/dataset.csv