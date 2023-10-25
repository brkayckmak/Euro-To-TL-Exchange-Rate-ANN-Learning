# Eur-to-TL-with-ANN-MATLAB

## Teaching the value of Euro against Turkish Lira to artificial neural networks on MATLAB

### Introduction
Artificial Neural Networks (ANN) modeling technique is a frequently used technique in the analysis of economic data and properties estimation problems. ANN, which imitates the working principle of the human brain, has an important place in artificial intelligence studies. ANN models have many features such as parametric and non-linear, learning from data, making generalizations, working with an unlimited number of variables.

In this study, the euro rate against TL was used between November 2015 and November 2020. It is aimed to test artificial neural network models in estimating the euro exchange rate. 

### Exploring Data and The Net
In this study, training and testing of the euro exchange rate to the artificial neural network has been carried out. In the foreign exchange estimation, economic data was used as input data in the ANN model. The value of the euro against the Turkish lira was used as input data. The data is divided into two parts; Of 1809 data, 309 were used as test data and 1500 as training data. The generated data were trained in ANN, and the trained data were tested on learning performance in 309 test data. The neural network is iterated for 5000 epochs.

The input values were created by converting 1828 Euro rate values into a matrix with the size of 10x1809 with the Hankel function. Then, the transpose of this matrix was taken and made suitable for the output. The output matrix, on the other hand, is given as a 1x1809 matrix consisting of the values between the 11th Euro exchange rate and the last value. 

Multilayer feedforward neural networks containing hidden neurons and linear output neurons can adapt and solve multidimensional imaging problems quite well with the provided data and hidden layers containing sufficient number of neurons. The network is trained with the Levenberg-Marquardt back propagation algorithm (trainlm).

### Result

When the artificial neural network design is evaluated, it is realized that MSE=0.0011975 and R^2=0.9996 in the model with two hidden layers feedforward and back propagation algorithm, in the model with 10 and 9 neurons in the hidden layers, 1500 data for training and 309 data for testing. As a result of the experiment, the test error was determined as 0.0043. 

In this study, the euro exchange rate teaching regarding Turkey has been made to the artificial neural network. The data in this study covers the 5 years between November 2015 and November 2020. When the results obtained from the study are examined, the use of the ANN model, which has been frequently used in economic forecasting models in recent years, is successful in estimating exchange rates. It is clearly seen from the study that strong predictions can be made with the use of ANN in exchange rate estimation. 

