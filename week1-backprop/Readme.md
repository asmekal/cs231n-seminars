# Plan for this seminar
In this seminar you will
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

At home
- backward for many other layers (Conv, Pool, BatchNorm, Dropout, etc)
