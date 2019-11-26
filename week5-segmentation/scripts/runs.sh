catalyst-dl run -C segmentation/configs/config_bce_loss.yml --logdir ./logs/bce_loss
catalyst-dl run -C segmentation/configs/config_iou_loss.yml --logdir ./logs/iou_loss
catalyst-dl run -C segmentation/configs/config_dice_loss.yml --logdir ./logs/dice_loss