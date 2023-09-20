% PART 1.a ******************************************

until = 3.0;
Ts = 0.0001;
f0 = 440;

t = (0:Ts:until)';
x1 = sin(2*pi*f0*t)'; % later change to 2*f0 & 4*f0

% plotting the graph and modifying it
plot(t,x1); % or without xlim, say: plot(t(1:101),x1(1:101));
zoom xon;
grid on;
title('sin(2*pi*440*t)');
xlabel('t (sec)');
ylabel('Amplitude');
xlim([0 0.01]);

% listening
% sound(x1);
% soundsc(x1);
soundsc(x1,1/Ts);


% PART 1.b ******************************************

Ts = 0.0001;
until = 3.0;

s = sin(2*pi*440*(0:Ts:until)')' + sin(2*pi*554*(0:Ts:until)')' + sin(2*pi*659*(0:Ts:until)')';

% plotting
plot((0:Ts:until)',s);
zoom xon;
grid on;
title('sin(2*pi*440*t) + sin(2*pi*554*t) + sin(2*pi*659*t)');
xlabel('t (sec)');
ylabel('Amplitude');
xlim([0 0.01]);

% listening
soundsc(s, 1 / Ts);


% PART 2 ********************************************

phi = 0; % later change to {pi/4, pi/2, 3*pi/4, pi}
t2 = (0:0.0001:3)';
x2 = cos(2*pi*587*t2 + phi);

% plotting
plot(t2,x2);
zoom xon;
grid on;
title('cos(2*pi*587*t2)');
xlabel('t (s)');
ylabel('Amplitude');
xlim([0 0.01]);

% listening
soundsc(x2, 10000);


% PART 3 ********************************************

a = 2; % later change to 1 & 3
t = (0:0.0001:3)';
x3 = exp( -(a*a + 2)*t ).*cos(2*pi*440*t);

% plotting
plot(t,x3);
zoom xon;
grid on;
title('exp(-(a*a + 2)*t) ).*cos(2*pi*440*t) ; a=2');
xlabel('t (sec)');
ylabel('Amplitude');
xlim([0 0.1]);

% listening
soundsc(x3, 10000);


% PART 4 ********************************************

f1 = 10; % later change to 5 & 15
f2 = 1000;

x4 = cos(2*pi*f1*(0:0.0001:3)').*cos(2*pi*f2*(0:0.0001:3)');

% plotting
plot((0:0.0001:3)',x4);
zoom xon;
grid on;
title('cos(2*pi*f1*t).*cos(2*pi*f2*t) ; f1=10,f2=1000');
xlabel('t (sec)');
ylabel('Amplitude');
xlim([0 0.1]);

% listening
soundsc(x4, 10000);


% PART 5 ********************************************

Ts = 0.0001;
until = 2.0;
t = (0:Ts:until)';
phi = 0; % doesn’t matter
mu = -500; % in the end will be doubled and halved
f0 = 2500;
% later change mu = 500 & f0 = 2500

x5 = cos(2*pi*mu*t.*t + 2*pi*f0*t + phi);

plot(t,x5);
zoom xon;
grid on;
title('cos(2*pi*mu*t.*t + 2*pi*f0*t + phi)');
xlabel('t (s)');
ylabel('Amplitude');
xlim([0 0.1]);

soundsc(x5, 1/Ts);


% PART 5 – Chirping Puzzle **************************

Ts = 0.001;
until = 3.0;
t = (0:Ts:until)';
phi = 0;
mu = -2500/3;
f0 = 3000;

x5 = cos(2*pi*mu*t.*t + 2*pi*f0*t + phi);

plot(t,x5);
zoom xon;
grid on;
title('');
xlabel('t (s)');
ylabel('Amplitude');
xlim([0 1]);

soundsc(x5, 1/Ts);