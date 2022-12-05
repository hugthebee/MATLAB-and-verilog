% .m is the extension for MATLAB files
% to run a file, just type in the name of the file in the command window or
% %{ - }% is a multiline comment
% use the RUN button
% clc -> clear command window
% you can code on the command line also
% all variables and it's values are stored in the workspace

x = [1, 2, 3, 4]
y = [1, 2, 3, 4]
plot(x,y)

% plot fills in all the values in between too
% the stem command is used for discrete signals -> to not fill in the
% values like plot

stem(x,y)

% commas seperate values in the same row while semi-colon takes values to the
% next row
% disp data type is used to print variables onto the command window

X = [1,2,3;4,5,6;7,8,9];
disp(X)

% the semi colon at the end makes sure the value of X is not printed twice
s = 4;
massage = ['The value of s is ',num2str(s)];

disp(massage);

% to make t take a range of values
t = 0:0.001:1;

% t varies from 0 to 1 in steps of 0.01
t1 = 0:0.2:0.5
% here, since 0.05 is the upper limit it doesn't always have to be
% inclusive and it will just ciel based on the upper limit value

y = sin(10*t); % increasing frequency with the 10*t thing
plot(t,y,'yellow',linewidth = 2);
xlabel('t');
ylabel('y(t)');
title('Sinusoid');

% plot options like colour and thickness of line can also be changed

hold on; % makes sure that all upcoming plots are appended on the same plot
%otherwise only the latest plot is plotted

y1 = cos(10*t);
plot(t,y1,'red',linewidth = 2);
hold off;

figure();
% figure just opens a new plot window

%------ COMPLEX NUMBERS --------%
t = 0:0.001:1
% complex numbers are represented by 1j on MATLAB
y = cos(10*t) + 1j*sin(10*t)

subploy(2,2,1);
plot(t,y)




%------ FUNCTIONS ------%
function b = GIF(a)    %taking an input 'a'
         b = floor(a);
         
         %b = a/1;
end;


%functions files should be saved with the same name as the function
% just save it in the same folder as your main file

% if - else statements
if(b<a)
    disp('ok');
elseif(b==a)
    disp('no');
else
    disp('monsoon');
end

% declare i = 1i and j = 1j at the beginning of the code itself to prevent
% mistakes

A = [];

for k = 1:10
    A = [k:A];
end

A1 = [1,2,3,4];
A2 = [5,6,7,8];

A3 = [A1,A2]; % 1x8 matrix
A4 = [A1;A2]; % 2x4 matrix

%impluse train sampling - very useful. u get impulses of the magnitude of a
%function after sampling
% so you essentially get the discrete version of the graph -> this works
% because the area of the impulse is 1
 t = 0:0.001:1
 y = sin(10*t)
figure()
subplot(2,1,1);
plot(t,y,'r');

l = length(t);
y1 = zeros(1,l); %makes array of dimensions 1xl and fills them with zero

%making an impulse train
for k = 1:l
    if(~rem(k,4))
        y1(k) = 1;
    end
end

%ALWAYS LABEL YOUR PLOTS and TITLE IT TOO
%when you have subplots, you can title all of them together with 
%set limits on plots with xlim and ylim commands



