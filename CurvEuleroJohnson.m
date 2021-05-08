close all
clear

Sy=300; %Mpa
C=1;
E=200000; %Mpa
s=[0:0.5:250];
f3=zeros(1,length(s));
f2=zeros(1,length(s));
b=((Sy/(2*pi))^2)*(1/(C*E));
Ccu=(C*(pi^2)*E)*(s.^(-2));  %Ccu=Pcr/A------Pcr=carico critico
f2=Sy-(b*(s.^2));
for r=1:length(s)
    f3(r)=Sy;
end
figure
hold on
plot(s,Ccu);
s2=sqrt((2*(pi^2)*C*E)/Sy);
plot(s2,(C*(pi^2)*E)*(s2^(-2)),'o');
plot(s,f3);
plot(s,f2);