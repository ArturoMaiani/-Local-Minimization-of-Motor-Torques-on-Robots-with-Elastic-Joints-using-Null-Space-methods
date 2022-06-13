clear


% FILE MAIN LINEARE

% sampling time
Ts=0.01;

%duration of simulation
Tsim_lin=2.58;

%starting point
p_in=[1.41;-0.41];
%end point
p_fin=[1.41;0.41];

%initial error on trajectory
% q_iniz_lin=[-pi/4-0.1;+3/4*pi;-3/4*pi];


% initial conditions
q_iniz_lin=[-pi/4;+3/4*pi;-3/4*pi];

%output data for simulation
out=sim('Progetto_robotics_linear');


% dynamic simulation of duration approx 2.6 sec
animation_linear


%   STROBOSCOPIC VIEW OF WHOLE TRAJECTORY
% figure
% 
% stroboscopio_linear
