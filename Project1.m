% Project1: input DH table (Nx4), and limit table (Nx2) and use stick to
% call each variable.
clear all;
close all;
clc;

DH=[inf 0.15185 0.00  90.00  %FOR UR5
          inf 0.00 -0.24355 00.00
          inf 0.00 -0.2132 00.00
          inf 0.13105  0.00 90.00
          inf 0.08535 0.00 -90.00
          inf 0.0921 0.00  0.00];

limit_table=[-90 90
             -90 90
             -90 90
             -90 90
             -90 90
             -90 90];
             

stick(DH,limit_table );