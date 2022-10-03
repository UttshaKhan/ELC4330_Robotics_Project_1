% x = [0 0 0; 0 0 2; 0 2 2; 0 2 0];
% y = [2 0 2; 0 0 2; 0 0 0; 2 0 0];
% z = [2 0 2; 2 2 2; 0 2 2; 0 0 2];
% c = [2 2 2; 3 3 0; 2 2 2; 0 0 3];
% fill3(x,y,z,c)
close all;
clear all;
clc;

figure(1);
 xlim([-10 10])
 ylim([-10 10])
 zlim([-10 10])
 view([45 45])

T=eye(3);
r=3;

draw_revolute(r,T,'b')

function draw_revolute(r,T,c)
hold on;

h=3*r;

% [X,Y,Z] = cylinder(r,r*50);
nx_pts=linspace(-.5*h,+.5*h,500);
ny_pts=linspace(0,360,500)*pi/180;
[X_pts,Y_pts]=meshgrid(nx_pts,ny_pts);
y_pts=r*cos(ny_pts);
z_pts=r*sin(ny_pts);
x_pts=nx_pts;
[Y,Z]=meshgrid(y_pts,z_pts);
X=X_pts;
surf(X,Y,Z,'EdgeColor','none','FaceColor','r','FaceAlpha',.5);
fill3(X(1,:),Y(1,:),Z(1,:),'r')
fill3(X(2,:),Y(2,:),Z(2,:),'r')

% Z(1,:) = -.5*h*ones(1,size(Z,2));
% Z(2,:) = +.5*h*ones(1,size(Z,2));

% pts=[X(1,:);Y(1,:);Z(1,:);ones(size(X));
% Y=
% surf(X,Y,Z,'EdgeColor','none','FaceColor','r','FaceAlpha',.5);

% th = 0:pi/r*50:2*pi;
% x_circle = r * cos(th) + 0;
% y_circle = r * sin(th) + 0;
% z_circle_bottom=0*ones(size(x_circle));
% z_circle_top=h*ones(size(x_circle));
% % circles = plot3(x_circle, y_circle,z_circle);
% fill3(x_circle, y_circle,z_circle_bottom, c)
% fill3(x_circle, y_circle,z_circle_top, c)
hold off
end
