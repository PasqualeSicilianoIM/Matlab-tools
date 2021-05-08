close all
clc

h=1;
T=4;
t=[0:h:T];
% yp=@(t) (-10*(t-2));
yp=@(t,y) y;
EuleroEsp(yp,1,t,h,T);

function EuleroEsp(fun,Y0,t,h,T)
dt=h;
soli=Y0;
sol=[];
u=[0];
solii=u(1);
    for e=1:length(t)
       g=@(t,h) solii-fun(t,h);
       u(e)=fzero(g(t(e),u(e)));
       u(e)=solii-(h*(u(e)));
%     solii=soli+(dt*(fun(e,soli)));
    end
    solT=(2.74)^T;
    plot(t,u);
    fprintf("La soluzione esatta è: y(%d)=%d \n",T,solT)
end