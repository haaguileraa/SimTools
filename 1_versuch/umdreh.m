clear, clc
prompt = 'Geben Sie bitte einen Vektor:  ';

x = input(prompt);
y = drehen(x);


disp(['gegebener Vektor: [', num2str(x), ']'])
disp(['umgedrehter Vektor: [', num2str(y), ']'])

function y = drehen(x)
    y = flip(x);
end