function [R] = MyDist_a(P, P0)
%MYDIST_A returns the distance between points vector P to the point P0
%using 1 line of code.
%   P0 - [1 N] dimension while N it is the point dimension
%   P  - [M N] dimension while M it is the number of points

R = vecnorm(P-P0,2,2);
end

