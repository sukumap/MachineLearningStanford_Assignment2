function[C,D]= splitmy(A,B)
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
plot(C,"go");
end


