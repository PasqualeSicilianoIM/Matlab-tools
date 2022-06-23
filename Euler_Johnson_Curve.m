close all
clear

%{
   Argument:
   - Sy = Yield Stress [MPa]
   - E = Young's Modulus [MPa]
   - L = Length of the beam [mm]
   - A = Section Area [mm^2]
   - I = Moment of Inertia [mm^4]
   - C = Type of boundary condition
%}


function EulerJohnsonCurve(Sy,E,L,A,I,C)
slenderness=linspace(0,10,240);
r=I/A;
crit_load_Euler=(E*pi^2)./(slenderness.^2); % Critical Load Euler's Formula
crit_load=(((Sy^2)/(4*E*pi^2))*(slenderness.^2)); % Critical Load Johnson Parabola
beam_slenderness=C*L*sqrt(A/I);
crit_slenderness=sqrt((E*2*(pi^2))/Sy);
disp("-----------------------------");
disp("Critical Slenderness: " + crit_slenderness);
disp("Beam Slenderness: " + beam_slenderness)
figure
hold on
plot(slenderness,crit_load);
plot(slenderness,crit_load_Euler);
end