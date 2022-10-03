clear all;
close all;
clc;

DH=[inf 9.75 0.00 90.00
          inf 0.00 9.00 00.00
          inf 0.00 9.00 00.00
          inf 0.00  0.00 90.00
          inf 4.00 0.00 00.00];

limit_table=[0 360
             0 360
             0 360
             0 360
             0 360];

stick(DH , limit_table);