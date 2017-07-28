tic;% Start the timer
clear all; close all; clc;

M1 = 1; % Mean of X
M2 = 2; % Mean of Y
V1 = 4; % Variance of X
V2 = 9; % Variance of Y
i = 0; % the random number generated by the algorithm 

% Geberate X and Y that are N(0,1) random variables and independent
while(i<=999999)
    u1 = 2*rand()-1;
    u2 = 2*rand()-1;
    s = u1^2 + u2^2;
    if(s < 1)
        i = i + 1;
        X(i) = sqrt(-2*log(s)/s)*u1;
        Y(i) = sqrt(-2*log(s)/s)*u2;
    end
end
% Scale them to a particular mean and variance  
x = sqrt(V1)*X + M1; % x~ N(M1,V1)
y = sqrt(V2)*Y + M2; % y~ N(M2,V2)
toc; % Read elapsed time from stopwatch,(Q1_6 compare the computational time)
cov(x,y)%Q_5 mean, variance, cov of x and y
meanx=mean(x)
meany=mean(y)
