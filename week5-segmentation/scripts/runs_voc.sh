catalyst-dl run -C segmentation/configs/voc/config_bce_loss.yml --logdir ./logs/voc/bce_loss
catalyst-dl run -C segmentation/configs/voc/config_iou_loss.yml --logdir ./logs/voc/iou_loss
catalyst-dl run -C segmentation/configs/voc/config_dice_loss.yml --logdir ./logs/voc/dice_loss