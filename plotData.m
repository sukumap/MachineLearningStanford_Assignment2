function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%



function splitmy(A,B)
index0 = 1;
index1=1;

for i=1:100,
 if(B(i) == 1),
 D(index1,:) = A(i,:);
 index1 = index1+1;
 elseif (B(i) == 0),
 C(index0,:) = A(i,:);
 index0 = index0+1;
 end;
end
%disp(C);
%disp("Displaying D");
%disp(D);
%disp(length(C));
%disp( length(D));
%save notadmitted.txt C;
%save admitted.txt D;
plot(C(:,1),C(:,2),"ko", "MarkerFaceColor","y");
hold on;
plot(D(:,1),D(:,2),"r+");
end
splitmy(X,y)




% =========================================================================



hold off;

end
