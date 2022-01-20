
%% V-2.1 %%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all
x1 = 0;
x2 = 4*pi;
schritt = pi/4; 
n =  round(x2/schritt)+1;
x = linspace(x1,x2,n);
%besser:
x = x1:schritt:x2;
%% V-2.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%
%entweder durch die funktion f.m
y = f(x)
%oder direkt
y = 3*sin(x)
%D-2.1
figure(1)
plot(x,y)
title('Uebung 2.1.1')
xlabel('x')
ylabel('y')
%% D-2.2
xn = x1:schritt/2:x2;
plot(x,y, xn, f(xn))
%% D-2.3
legend( [num2str(length(x)),' Punkte'],  [num2str(length(xn)),' Punkte'])
xlabel('x')
ylabel('y =3sin(x)')
%% D-2.4
clc
clear
close all
freq = 1e3; %hz
A = 1; %V
t = linspace(-1e-3,3e-3);
figure(1)
plot(t,A*sin(2*pi*freq*t))
title('D 2.4')
xlabel('t')
ylabel('A*sin(\omega t)')

%% V-2.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%
x0 = 0;
y0 = 0;
r = 1;
% D-2.5
t = 0:0.1:2*pi;
[x, y] = kreis(r,x0,y0,t);
% D-2.6
figure(2)
plot(x,y)
title('V 2.3')
% D-2.7: Kreis sieht elliptisch aus
% D-2.8 
axis equal  % x- und y-Achse sehen genauso aus
%axis image  % wie beim Befehl "axis equal" aber die Plotbox wird eng um die Daten angepasst.
%axis square % aktuellen x- und y-Achse werden wie ein Viereck gezeigt 
%axis normal
axis image
%% D-2.10
clc
clear
close all

x1 = 0;
x2 = 4*pi;
schritt = pi/8; 
x = x1:schritt:x2;
xn = x1:schritt/4:x2;
figure(1)
plot(x,f(x), 'k--')%, xn, f(xn))
legend(  [num2str(length(x)),' Punkte'],  [num2str(length(xn)),' Punkte'])
xlabel('x')
ylabel('y =3sin(x)')

%% D-2.11
clc
clear
close all

x1 = 0;
x2 = 4*pi;
schritt = pi/8; 
x = x1:schritt:x2;
figure(1)
plot(x,f(x),'b-o', x, 2*cos(x)) 
title(['Mehrere Funktionen in einem Diagramm: ', num2str(length(x)), ' Punkte'])
legend( 'y1 =3sin(x)', 'y2 = 2sin(x)')
xlabel('x')
ylabel('y1,y2')
%% D-2.12
close all
figure(1)
plot(x,f(x), 'k-o', x, 2*cos(x),'k-x') 
title(['Mehrere Funktionen in einem Diagramm: ', num2str(length(x)), ' Punkte'])
legend( 'y1 =3sin(x)', 'y2 = 2sin(x)')
xlabel('x')
ylabel('y1,y2')
%% D-2.13
close all
figure(1) 
stairs(x,f(x))  % A/D-signale
title(['Stairs: ', num2str(length(x)), ' Punkte'])
legend( 'y1 =3sin(x)')
xlabel('x')
ylabel('y1,y2')

figure(2)
stem(x,f(x))  % Fourier-Koeffizienten, einzelne Punkte, usw.
title(['Stem: ', num2str(length(x)), ' Punkte'])
legend( 'y1 =3sin(x)')
xlabel('x')
ylabel('y1,y2')
%% D-2.14
grid on
%% D-2.15
axis([0 2*pi+0.1 -5 5])

%% D-2.16
clear
clc
close all
x = -5:0.1:10;
y = exp(x);

figure(1)
plot(x,y)
semilogy(x,y)
%semilogx(x,y)
%loglog(x,y)
%xlabel('x')
ylabel('y=exp(x)')
grid on

%% D-2.17
%hab ich schon gezeigt
%% D-2.18
close all
figure(1)
subplot(2,2,1)
plot(x,y)
loglog(x,y)
xlabel('x')
ylabel('y=exp(x)')

subplot(2,2,2)
plot(x, sin(x).*cos(x))
xlabel('x')
ylabel('y=sin(x)*cos(x)')

subplot(2,2,3)
plot(x, cos(x).^2)
xlabel('x')
ylabel('y=cos^2(x)')

subplot(2,2,4)
plot(x, sin(exp(x)))
xlabel('x')
ylabel('y=sin(e^x)')
%% D-2.19 und D-2.20
clc
clear
close all
[X, Y] = meshgrid(-1:0.1:1, -1:0.1:1);
F = f3d(X,Y);
surf(X,Y,F)
%colormap('cool')
%%
figure(2)
g = sinc(2.*sqrt(X.^2+Y.^2));
surf(X,Y, g)
colormap('spring')
%%
figure(3)
h = sinc(X.*2).*sinc(Y.*2);
surf(X,Y, h)
colormap('hot')

%% D-2.21
close all
mesh(X,Y,F)
%colormap('hot')

%% D-2.22
clc
clear
close all
load('some_images.mat')
figure(1)
imshow(lena)
figure(2)
imshow(einstein)
%% b: um 90° gedreht
close all 
figure(1)
imshow(lena')
figure(2)
imshow(einstein')
%% c: 0->schwarz, 1-> Weiß (double) / uint8: 0-255
%close all 
k = 1.2;
figure(1)
imshow(lena.*k)
figure(2)
imshow(einstein.*k)
%% d: 
k = -0.5;
figure(1)
imshow(lena+k)
figure(2)
imshow(einstein+k)
%% e 
close all 
figure(1)
imshow(lena+einstein)
%% f 
close all
einstein_noisy = einstein+noise;
imshow([einstein,einstein_noisy])
%% g
close all
A1 = A/max(max(A));
B1 = B/max(max(B));
C1 = C/max(max(C));
montage([A1, B1, C1, B*A, A*C])
%% D-2.23
close all
%einzelne Farbkanaele multiplizieren
mod_peppers = peppers;
faktor_rot = 0.8; %0 %nur grün 
faktor_gruen = 2; %1 %nur grün
faktor_blau = 0.2;%0 %nur gün
%Rot
mod_peppers(:,:,1) = peppers(:,:,1)*faktor_rot+1;
%Gruen
mod_peppers(:,:,2) = peppers(:,:,2)*faktor_gruen;
%Blau
mod_peppers(:,:,3) = peppers(:,:,3)*faktor_blau;
%Bild darstellen
figure(1)
imshow([peppers, mod_peppers])
figure(2)
imshow([mod_peppers(:,:,1), mod_peppers(:,:,2), mod_peppers(:,:,3)])
