% Teaching the value of Euro against Turkish Lira to artificial neural networks

% Uploading and defining input datas;
eurdata = xlsread('rates.xlsx'); 
outputA=eurdata(:,3)';
inputA=eurdata(:,2);
X = hankel(1:10, 10:1818)';
input=inputA(X)';

% To perform studies with a specific dataset, the seed is determined;
seed=50;

rand('seed',seed);
randn('seed',seed);

values = randperm(1809);

% Defining train input and test input parameters;
train_input = input(:,values(1:1500));
test_input   = input(:,values(1501:end));

% Defining train output and test output parameters;
train_output = outputA(:,values(1:1500));
test_output   = outputA(:,values(1501:end));

% Creating artificial neural network object;
net = newff(input,outputA,[10 9],{'tansig','purelin','purelin'},'trainlm');

% Defining ANN's parameters;
net.trainParam.goal = 1e-5;
net.trainParam.showCommandLine = 1;
net.trainParam.showWindow = 1;
net.trainParam.show = 10;
net.trainParam.epochs = 5000;
net.trainParam.min_grad = 1e-16;
net.divideFcn = 'dividetrain';

% Creating artificial neural network;
net = train(net,train_input,train_output);

% Testing ANN;
out = sim(net,test_input);

% Mininmum Squared Error performance (MSE);
test_error = mse(test_output-out)

% Plotting original datas and predicted datas;
plot(1:309,test_output,'o',1:309,out,'+');