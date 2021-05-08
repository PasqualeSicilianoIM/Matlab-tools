close all
clc

t=[-5:0.001:-0.3];
syms x;
y=@(x) ((x.^3)+2)/(exp(x)+x.^2);
yi(x)=diff(y,x);
yp=matlabFunction(yi);
MetRegulaFalsi(yp,t);




function MetRegulaFalsi(y,x)
%fp=(y(length(r))-y(r(1)))/(length(r)-r(1));
Tol=1e-06;
iter=20;
count=0;
x1=x(1);
x2=x(end);
y1=y(x1);
y2=y(x2);
c=0;    
figure;
hold on;
plot(x,y(x));

    while count<iter || err>Tol
        xi=@(y) (((x2-x1)/(y2-y1))*(y-y1))+x1;
        c=xi(0);
        err=abs(y(c));
        if y(x1)*y(c)<0
        x2=c;
        y2=y(x2);
        err=abs(y(x2));
        else
                x1=c;
                y1=y(x1);
                err=abs(y(x1));
        end
            count=count+1;
            
    end
plot(c,y(c),"o");


    fprintf("La soluzione e': %d e vale f=0 %d \n",c,y(c));
end
