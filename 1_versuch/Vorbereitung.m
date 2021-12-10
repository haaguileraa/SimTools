%Vorbereitung

%% V-1.1
clear, clc

%Zulässig:
Determinante_von_A = 1;  A=2; a=3; DiesIstDasErgebnis=4;

%Nicht Zulässig
% 3_D -> Variablennamen müssen mit einer Nummer nicht anfangen
% wert-1 -> Variable "wert" minus 1 
% wert5.8 -> "." für Element-wise operations, Decimal point, Object property or method specifier oder Structure field access
% Übungsvariable -> Umlaut UTF-8
%% V-1.2
clear, clc
meinesume(100)
%% V-1.3
clear, clc
prompt = 'Geben Sie bitte einen Vektor:  ';

x = input(prompt);
y = umdreh(x);


disp(['gegebener Vektor: [', num2str(x), ']'])
disp(['umgedrehter Vektor: [', num2str(y), ']'])
%% V-1.4

% clear, clc
% 
% 
% %myfun = @(x)(exp(-x)-5);
% %intrv = [-2;-1];
% %x=-3:.01:3; plot(x,myfun(x))
% %ns = nullstelle(myfun,[-2;-1])
% 
% 
myfun = @(x)(-0.25*x.^3+1.25*x); 
intrv = [-3;-1];
%x=-3:.1:3; plot(x,myfun(x))
ns = intervall(myfun,intrv)
