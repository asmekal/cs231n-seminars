# cs231n-seminars
Seminars for CV course based on cs231n at ABBYY, 2019

# Seminars
Seminar 1 (backprop in numpy) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/andreyzharkov/cs231n-seminars/blob/master/week1-backprop/backprop.ipynb)
- learn how backpropagation really works
- implement backward pass for main layers (Linear, ReLU, Sigmoid, Softmax)
- implement backward pass for most common criterion (Crossentropy)
- implement batch stochastic gradient descent
- train your tiny neural network on MNIST

Exercises
- why sigmoid/tanh activations may be bad for deep networks?
- can you train classification problem with MSE loss? Why this may not be a good idea?
- "dead ReLU" problem - provide example when it may happen
- derive analytically (on paper) gradients w.r.t. all inputs and parameters for small network (Linear -> ReLU -> Linear -> Softmax) with NLL loss

[Homework 1](https://github.com/yandexdataschool/Practical_DL/tree/spring2019/homework01)
- backward for many other layers (Conv, Pool, BatchNorm, Dropout, etc)

Seminar 2 (training your network with PyTorch) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/andreyzharkov/cs231n-seminars/blob/master/week2-pytorch_and_image_classification/image%20classification.ipynb)
- PyTorch in 5 minutes
- training your neural net in PyTorch
- training on GPU
- reproducibility
- explore different activations and loss functions

Seminar 3 (layers & architectures) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/andreyzharkov/cs231n-seminars/blob/master/week3-layers-and_architectures/Layers%20%26%20Architectures.ipynb)
- Most confusing layers: Dropout and BatchNorm
- Most common architectures: Alexnet, VGG, Inception, Resnet, Resnext, Densenet, SENet

Seminar 4 (high level frameworks) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/andreyzharkov/cs231n-seminars/blob/master/week4-frameworks/???.ipynb)
- PyTorch [ecosystem](https://pytorch.org/ecosystem/)
- augmentations
- fasi.ai vs pytorch lightning vs catalyst
- catalyst
