clc;
close all;
clear all;

% --- Inputs ---
tmin = input('The lower bound of theta in degree=');
tmax = input('The upper bound of theta in degree=');
pmin = input('The lower bound of phi in degree=');
pmax = input('The upper bound of phi in degree=');

% --- Assignments ---
theta = (tmin:tmax) * (pi/180);
phi = (pmin:pmax) * (pi/180);
dth = theta(2) - theta(1);
dph = phi(2) - phi(1);

[THETA, PHI] = meshgrid(theta, phi);

% --- Pattern Inputs ---
% IMPORTANT: Type cos(THETA)
x = input('The field pattern : E(THETA,PHI)='); 

% IMPORTANT: Type cos(THETA).^2
v = input('The power pattern: P(THETA,PHI)=','s'); 

% --- Calculation ---
Pn = x.^2;
integrand = Pn .* sin(THETA);
Prad = sum(sum(integrand)) * dth * dph;

% --- Printing Results ---
fprintf('\n Input Parameters: \n-------------------- ');
fprintf('\n Theta =%2.0f : %2.0f : %2.0f', tmin, dth*180/pi, tmax);
fprintf('\n Phi   =%2.0f : %2.0f : %2.0f', pmin, dph*180/pi, pmax);
fprintf('\n POWER PATTERN : %s', v);

fprintf('\n \n Output Parameters: \n-------------------- ');
fprintf('\n BEAM AREA (steradians) = %3.2f \n', Prad);