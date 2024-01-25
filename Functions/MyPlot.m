function  MyPlot(P, P0)
%MYPLOT plots the points P and the point P0, connect line between them 
% and texting the distance and each point
%   P0 - [1 N] dimension while N it is the point dimension
%   P  - [M N] dimension while M it is the number of points

num_of_points = length(P);
R = MyDist_a(P,P0);
f=figure(1);
f.Name = 'Points Graph';

text(P0(1),P0(2),'P_0');
hold on
for i = 1:num_of_points
    x_line = [P0(1), P(i,1)];
    y_line = [P0(2), P(i,2)];
    plot(x_line,y_line,'Color','g','Marker','o','MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',3);
    text(P(i,1),P(i,2),['P_{' num2str(i) '}']); % point number
    x_coor = (P0(1)+P(i,1))/2;
    y_coor = (P0(2)+P(i,2))/2;
    text(x_coor,y_coor,num2str(R(i),2))
end
hold off
end

