close all
clc

h=0.05;
T=1;
t=[0:h:T];
% yp=@(t) (-10*(t-2));
yp=@(t,y) -2*y;
EuleroEsp(yp,1,t,h,T);

function EuleroEsp(fun,Y0,t,h,T)
dt=h;
soli=Y0;
sol=[];
solii=0;
    for e=1:length(t)
    solii=soli+(dt*(fun(e,soli)));
    sol(e)=solii;
    soli=solii;
    end
    solT=(2.74)^T;
    plot(t,sol);
    fprintf("La soluzione esatta è: y(%d)=%d \n",T,solT)
end