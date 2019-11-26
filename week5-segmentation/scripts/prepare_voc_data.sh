#!/usr/bin/env bash
# semantic classification

export WORKDIR=./logs
export DATADIR=./data/origin  # /path/to/dataset
export DATASET_DIR=$WORKDIR/datasets/PascalVoc2012  # /path/to/save/processed/dataset
export NUM_WORKERS=0
export RAW_MASKS_DIR=$DATASET_DIR/raw_masks

mkdir -p $WORKDIR
mkdir -p $DATASET_DIR

cp -R $DATADIR/* $DATASET_DIR/

#mv $DATASET_DIR/raw_masks $DATASET_DIR/masks

python data_processing/index2color.py \
    --in-dir $RAW_MASKS_DIR \
    --out-labeling $DATASET_DIR/index2color.json \
    --num-workers $NUM_WORKERS

python data_processing/process_semantic_masks.py \
    --in-dir $RAW_MASKS_DIR \
    --out-dir $DATASET_DIR/masks \
    --index2color $DATASET_DIR/index2color.json \
    --num-workers $NUM_WORKERS

python data_processing/image2mask.py \
    --in-dir $DATASET_DIR \
    --out-dataset $DATASET_DIR/dataset_raw.csv

catalyst-data split-dataframe \
    --in-csv $DATASET_DIR/dataset_raw.csv \
    --n-folds=5 --train-folds=0,1,2,3 \
    --out-csv=$DATASET_DIR/dataset.csv
