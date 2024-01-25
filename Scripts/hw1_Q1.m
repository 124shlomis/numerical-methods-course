%% HW1 - Question 1
clear, clc,
close all
% Given
P0 = [0.5 0.5];
P = rand(10,2);
%% Section a
R = MyDist_a(P, P0);
%% Section b
R = MyDist_b(P, P0);
%% Section c 
tic
R=MyDist_a(P, P0);
toc
tic
R=MyDist_b(P, P0);
toc
%% Section d
MyPlot(P, P0);
grid on
xlabel('x')
ylabel('y')