% Author: Hernan Aguilera


%% V-1.1
clear, clc

%Zul�ssig:
Determinante_von_A = 1;  A=2; a=3; DiesIstDasErgebnis=4;

%Nicht Zul�ssig
% 3_D -> Variablennamen m�ssen mit einer Nummer nicht anfangen
% wert-1 -> Variable "wert" minus 1 
% wert5.8 -> "." f�r Element-wise operations, Decimal point, Object property or method specifier oder Structure field access
% �bungsvariable -> Umlaut UTF-8

%% V-1.2
clear, clc
 
prompt = 'Geben Sie bitte eine n:  ';

x = input(prompt);
y = meineSume(x);

% Funktionen
disp(['y = ', num2str(y)])

function y = meineSume(n)
    y = sum(1:n);
end
