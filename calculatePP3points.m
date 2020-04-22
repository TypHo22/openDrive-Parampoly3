function [pp3Points] = calculatePP3points(pp3)
%CALCULATEPP3POINTS Summary of this function goes here
%  calculate the paramPoly3 points
%% Andreas Bernatzky 22.04.2020

pp3Points.x = [];
pp3Points.y = [];

%% actual algorithm
 for(s = 0 : 0.01 : pp3.length)
 
 uLocal = pp3.aU + pp3.bU * s + pp3.cU * s^2 + pp3.dU * s^3;
 vLocal = pp3.aV + pp3.bV * s + pp3.cV * s^2 + pp3.dV * s^3;
% transform to local x-y
   pp3Points.x(end + 1) = (uLocal * cos(pp3.hdg) - vLocal * sin(pp3.hdg)) + pp3.startX;
   pp3Points.y(end + 1) = (vLocal * cos(pp3.hdg) + uLocal * sin(pp3.hdg)) + pp3.startY;
 end
 
end

