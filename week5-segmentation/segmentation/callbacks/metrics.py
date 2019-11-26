import torch
from catalyst.dl.callbacks import ConfusionMatrixCallback


class SegmentationConfusionMatrixCallback(ConfusionMatrixCallback):
    def _add_to_stats(self, outputs, targets):
        assert outputs.size() == targets.size(), "non-equal shapes of outputs and targets"
        if outputs.size(1) == 1:
            outputs = (outputs.reshape((-1,)) > 0).long()
            targets = targets.reshape((-1,))
        else:
            outputs = outputs.argmax(dim=1).reshape((-1,))
            targets = targets.argmax(dim=1).reshape((-1,))
        super()._add_to_stats(outputs, targets)
