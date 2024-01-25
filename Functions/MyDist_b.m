function [R] = MyDist_b(P, P0)
%MYDIST_A returns the distance between points vector P to the point P0
%using for loop
%   P0 - [1 N] dimension while N it is the point dimension
%   P  - [M N] dimension while M it is the number of points

num_of_points = length(P);
R = zeros(num_of_points, 1);
for i = 1:num_of_points
    R(i) = sqrt(sum((P(i,:)-P0).^2,2));
end
end

