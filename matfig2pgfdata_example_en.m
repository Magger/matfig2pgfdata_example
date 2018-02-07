% Test program for the function matfig2pgfdata from Jörg Petzold 
% to compress large datasets for plotting with TikZ/pgfplots in LaTeX
% Authors: Mathias Magdowski
% Date: 2018-02-07
% E-Mail: mathias.magdowski@ovgu.de

% Clear the workspace
clear all

% Close all open figures
close all

% Number of data points of the raw data -> Scalar
N_raw=10000;

% x-values of the raw data -> Row vector(1,N_raw)
x=linspace(0,2*pi,N_raw);
% y-values of the raw data -> Row vector(1,N_raw)
y=sin(x);

% Open new figure
figure(1)
% Plot the full raw data
plot(x,y)

% Compress the raw data
% source: https://de.mathworks.com/matlabcentral/fileexchange/65987-matfig2pgfdata-filename-m-n-
[x_red,y_red]=matfig2pgfdata('sinus.dat',1,1);

% Plot a comparison
figure(2)
plot(x,y,x_red,y_red,'-o');
