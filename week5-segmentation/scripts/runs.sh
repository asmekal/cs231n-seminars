catalyst-dl run -C segmentation/configs/barcode/config_bce_loss.yml --logdir ./logs/barcode/bce_loss
catalyst-dl run -C segmentation/configs/barcode/config_iou_loss.yml --logdir ./logs/barcode/iou_loss
catalyst-dl run -C segmentation/configs/barcode/config_dice_loss.yml --logdir ./logs/barcode/dice_loss