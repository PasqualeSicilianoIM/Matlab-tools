close all
clear

F=50000;
br=100; %mm
b=19; %mm
h=70; %mm
r=[50:1:150]; %mm
M=F*br; %Nmm
e=9;
Rn=91; %mm
area=b*h; %mm^2
sigmaNorma=F/area;
sigma=((M/(area*e))*((Rn-(r)))./r);
figure;
hold on
plot(r,sigma);
sigmaIn=((M/(area*e))*((Rn-(50)))/50);
sigmaOut=((M/(area*e))*((Rn-(150)))/150);
disp('Tensione intradosso: ' + string(sigmaNorma+sigmaIn));
disp('Tensione estradosso: ' + string(sigmaNorma+sigmaOut));