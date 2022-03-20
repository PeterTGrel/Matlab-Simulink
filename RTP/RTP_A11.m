U_uP = [ 4,5,6 ];
U_uL = [ 4,5,6 ];

U_ythetaL4 = [ 2.65,3.55,4.47 ]; % U_uL = 4
U_ythetaL5 = [ 2.32,3.08,3.84 ]; % U_uL = 5
U_ythetaL6 = [ 2.05,2.69,3.37 ]; % U_uL = 6

U_ythetaP4 = [ 2.65,2.32,2.05 ]; % U_uP = 4
U_ythetaP5 = [ 3.55,3.08,2.69 ]; % U_uP = 5
U_ythetaP6 = [ 4.47,3.84,3.37 ]; % U_uP = 6

U_yF = [ 7.22 7.22 7.18 8.81 8.79 8.77 10.60 10.59 10.57 ];

%% Aufgabe 1.1 + 1.3
plot(U_uP, U_ythetaL4,'r');
hold on;
plot(U_uP, U_ythetaL5,'g');
hold on;
plot(U_uP, U_ythetaL6,'b');
hold on;
op1 = interp1(U_uP,U_ythetaL5,5);
plot(5,op1,'o');
hold on;
title('U_ytheta = f(U_uP)')
xlabel('U_uP');
ylabel('U_ytheta');
grid on;

%% Aufgabe 1.2 + 1.3
figure(2);
plot(U_uL, U_ythetaP4,'r');
hold on;
plot(U_uL, U_ythetaP5,'g');
hold on;
plot(U_uL, U_ythetaP6,'b');
hold on;
op2 = interp1(U_uL,U_ythetaP5,5);
plot(5,op2,'o');
hold on;
title('U_ytheta = f(U_uL)')
xlabel('U_uL');
ylabel('U_ytheta');
grid on;
%% aufgabe 1.4 + 1.5
op1
op2
%K_ges = delta_U_ytheta / delta_U_uP;
K_ges2 = (3.84-2.32)/(6-4)

%% 1.4
v = 42;
v0 = 39.3;
v1 = 42.9;
uv0 = 3.08;
uv1= 3.84;

uv = uv0 + (v-v0)*((uv1-uv0)/(v1-v0));
display(uv);


uv0 = 3.08;
uv1 = 3.84;
up0 = 5;
up1 = 6;

up = up0 + (uv-uv0)*((up1-up0)/(uv1-uv0));
display(up);

%% Aufgabe 1.6
% steigend
%Kges = delta_Uxtheta / delta_UyP = (821.9-598.6)/6-4 = 0.7103
K_gesDyn = (821.9+598.6)/ 2
T_g = 35.44;
% T_t = T_u = 2.177

% fallend
K_gesDyn2 = (821.9+598.6)/ 2
T_g2 = 35.44;
% T_t2 = T_u = 2.068 - 0.1088