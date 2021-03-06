
%% V-3.1
clc;
clear all;
close all;

a = [3 2 1 ];
b = [6 5 4].';

c1 = a*b
% D-3.1
size(c1)  % 1x1
ndims(c1) % 1
c2 = b*a
ndims(c2) % 2
size(c2)  % 3x3

%% V-3.2
clc;
clear all;
close all;

A = [1 2; 3 5];
c = [1 4];
b = c.';

A\b % Spaltenvektoren

c/A % Zeilenvektoren

%% D-3.2
clc;
clear all;
close all;

A = rand(4);
B = rand(4);

%% ------
A1 = A*B; % = A4
A2 = B*A; % = A3 
A3 = (A'*B')'; % = A2 (A'*B')' = B''*A''= B*A
A4 = (B'*A')'; % = A1 = A''*B'' = A*B
%% ------
A1 = A'*B'; % = A4
A2 = B'*A'; % = A3
A3 = (A*B)'; % = A2
A4 = (B*A)'; % = A1
%% ------
A1 = inv(A*B);
A2 = inv(A)*inv(B);
A3 = inv(B*A);
A4 = inv(B)*inv(A);  % alle sind unterschiedlich
%% V-3.3
%A * x = b
% siehe gauss.m
%% V-3.4
clc;
clear all;
close all;
syms x1 x2 x3;
A = [2 3 1; 4 1 4; 3 4 6];
x = [x1; x2; x3];
b = [-4 9 0]';
xs = inv(A)*b;
xd = A\b;



y = gauss(A,b)
%% D-3.3
clc;
clear all;
%close all;

%---------------
[x1, x2] = meshgrid( -2:.1:2, -2:.1:2 );
x3_Gl1 = -2.*x1-1;
figure(1)
%surf =  3-D colored surface
surf( x1, x2, x3_Gl1, 1*ones(size(x3_Gl1)),  'FaceColor','g' ); %gedrehte Ebene
shading flat;
colormap hsv
hold on
axis(2*[-1 1 -1 1 -1 1]); 
caxis([1 3]);

%---------------
x3_Gl2 = -(x1./4) - x2.*(15/4) -3;
surf( x1, x2, x3_Gl2, 2*ones(size(x3_Gl2)) ); shading flat;
colormap hsv
hold on
%Punkte liegen wo die Ebene sich kreuzen

%---------------

a = 0;
%a = 1 Mehrere L?sungen

x3_Gl3= -( x1.*(3+6*a^2) + x2.*(1-16*a^2)) + 10*a-3;
surf( x1, x2, x3_Gl3, 2*ones(size(x3_Gl3)),  'FaceColor','b', 'FaceAlpha',0.5); %shading flat;
hold off

%% 
for a = 0:0.01:1
    figure(1)
    surf( x1, x2, x3_Gl1, 1*ones(size(x3_Gl1)),  'FaceColor','g' ); %gedrehte Ebene
    shading flat;
    colormap hsv
    hold on
    axis(2*[-1 1 -1 1 -1 1]); 
    caxis([1 3]);
    x3_Gl2 = -(x1./4) - x2.*(15/4) -3;
    surf( x1, x2, x3_Gl2, 2*ones(size(x3_Gl2)) ); shading flat;
    colormap hsv
    hold on
    x3_Gl3= -( x1.*(3+6*a^2) + x2.*(1-16*a^2)) + 10*a-3;
    surf( x1, x2, x3_Gl3, 2*ones(size(x3_Gl3)),  'FaceColor','b', 'FaceAlpha',0.5); %shading flat;
    hold off
end
%% 
for a = 0:-0.01:-1
    a
    figure(1)
    surf( x1, x2, x3_Gl1, 1*ones(size(x3_Gl1)),  'FaceColor','g' ); %gedrehte Ebene
    shading flat;
    colormap hsv
    hold on
    axis(2*[-1 1 -1 1 -1 1]); 
    caxis([1 3]);
    x3_Gl2 = -(x1./4) - x2.*(15/4) -3;
    surf( x1, x2, x3_Gl2, 2*ones(size(x3_Gl2)) ); shading flat;
    colormap hsv
    hold on
    x3_Gl3= -( x1.*(3+6*a^2) + x2.*(1-16*a^2)) + 10*a-3;
    surf( x1, x2, x3_Gl3, 2*ones(size(x3_Gl3)),  'FaceColor','b', 'FaceAlpha',0.5); %shading flat;
    hold off
end

%% D-3.4


%% D-3.5


%% D-3.6
A = [2 3 -8; -4 5 1; 5 1 0];
b = [10 -8 11]';

x = A\b
y = gausselim(A,b)



%% D-3.7

A = [2 3 1; -4 4 2; 4 1 0];
b = [1 2 3]';

x = A\b
y = gausselim(A,b)
%Das System hat keine einzige L?sung

% Meherere L?sungen

