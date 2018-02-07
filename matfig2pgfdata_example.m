% Test- und Demoskript für die Funktion matfig2pgfdata von Jörg Petzold zum 
% Komprimieren von Rohdaten für das Plotten mittels TiKZ/pgfplots in LaTeX
% Author: Mathias Magdowski
% Date: 2018-02-07
% E-Mail: mathias.magdowski@ovgu.de

% alles löschen
clear all

% alle Abbildungen schließen
close all

% Anzahl der Datenpunkte der Rohdaten -> Skalar
N_raw=10000;

% x-Werte der Rohdaten -> Zeilenvektor(1,N_raw)
x=linspace(0,2*pi,N_raw);
% y-Werte der Rohdaten -> Zeilenvektor(1,N_raw)
y=sin(x);

% neue Figure öffnen
figure(1)
% plotten
plot(x,y)

% Rohdaten reduzieren
% Quelle: https://de.mathworks.com/matlabcentral/fileexchange/65987-matfig2pgfdata-filename-m-n-
[x_red,y_red]=matfig2pgfdata('sinus.dat',1,1);

% Vergleich plotten
figure(2)
plot(x,y,x_red,y_red,'-o');
