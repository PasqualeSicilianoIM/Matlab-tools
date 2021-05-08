close all
clc

x=[-5:0.7:5];
[X,Y]=meshgrid(x);
Z=X.^2+Y.^3;
[U,V,W]=surfnorm(Z);
figure;
hold on;
surf(X,Y,Z);
quiver3(Z,U,V,W);

