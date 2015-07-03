%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              Plot Fractinal PolyLogarithms: PolyLog(n,z)
%
%               Coded by Manuel Diaz, NTU, 2014.12.23.
%                   Copyright (c) 2014, Manuel Diaz.
%                           All rights reserved.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set z range
z = -2:0.01:0.99;

% 2.1 Set plotting defaults
set(0,'defaultTextInterpreter','latex')
set(0,'DefaultTextFontName','Times',...
'DefaultTextFontSize',14,...
'DefaultAxesFontName','Times',...
'DefaultAxesFontSize',14,...
'DefaultLineLineWidth',1.5,...
'DefaultAxesBox','on',...
'defaultAxesLineWidth',1.5,...
'DefaultFigureColor','w',...
'DefaultLineMarkerSize',7.75)

% 2.2 list of options for lines
color=['k','r','m','b','c','g','y','w'];
lines={'-',':','--','-.','-.','none'};
mark=['s','+','o','x','v','none'];

% 2.3 set local marker size
ms = 5;

% 3. Plot Polylog curves from n -7/2 to 7/2 
figure(1)
plot(z,PolyLog( 7/2,z),[lines{1},color(7)]); hold on;
plot(z,PolyLog( 6/2,z),[lines{1},color(6)]); 
plot(z,PolyLog( 5/2,z),[lines{1},color(5)]); 
plot(z,PolyLog( 4/2,z),[lines{1},color(4)]); 
plot(z,PolyLog( 3/2,z),[lines{1},color(3)]); 
plot(z,PolyLog( 2/2,z),[lines{1},color(2)]); 
plot(z,PolyLog( 1/2,z),[lines{1},color(1)]); 
plot(z,PolyLog(  0 ,z),[lines{4},color(1)]); 
plot(z,PolyLog(-1/2,z),[lines{3},color(1)]); 
plot(z,PolyLog(-2/2,z),[lines{3},color(2)]); 
plot(z,PolyLog(-3/2,z),[lines{3},color(3)]); 
plot(z,PolyLog(-4/2,z),[lines{3},color(4)]);
plot(z,PolyLog(-5/2,z),[lines{3},color(5)]);
plot(z,PolyLog(-6/2,z),[lines{3},color(6)]);
plot(z,PolyLog(-7/2,z),[lines{3},color(7)]); hold off;

% 3.1 Print axis lines
x = line([-2 2],[0,0],'color','k');
y = line([0 0],[-2,2],'color','k');
axis([-2,1,-1,1]); grid on;

% 3.2 Set title, labels and legend
title('PolyLogarithms of $z$','FontSize',20); 
xlabel('$z$','FontSize',16); ylabel('$Li_n(z)$','FontSize',16);
hleg = legend( ...
'Li_{ 7/2}(z)','Li_{ 3}(z)','Li_{ 5/2}(z)','Li_{ 2}(z)', ...
'Li_{ 3/2}(z)','Li_{ 2}(z)','Li_{ 1/2}(z)','Li_{ 0}(z)', ...
'Li_{-1/2}(z)','Li_{-1}(z)','Li_{-3/2}(z)','Li_{-2}(z)', ...
'Li_{-5/2}(z)','Li_{-3}(z)','Li_{-7/2}(z)', ...
'location','BestOutside');
set(hleg,'FontAngle','italic','FontSize',14)

% 4. Export plot to *.eps figure
print('-depsc','PolyLogPlot.eps');