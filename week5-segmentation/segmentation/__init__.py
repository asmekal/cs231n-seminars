from catalyst.dl import registry

# add experiment
from .experiment import BarcodeExperiment as Experiment
# from .experiment import VocExperiment as Experiment
from .runner import ModelRunner as Runner
from . import callbacks

registry.CALLBACKS.add_from_module(callbacks)
