clear

% FILE MAIN LINEARE


%sampling time
Ts=0.01;

% simulation duration
Tsim_lin=2.58*4;

% passing points
p_in=[1.41;-0.41];
p_fin=[1.41;0.41];
p_fin1=[0.4;0.41];
p_fin2=[0.4;-0.41];
p_fin3=[1.41;-0.41];


% initial conditions with initial error
q_iniz_lin=[-pi/4-0.1;+3/4*pi-0.1;-3/4*pi];

% simulation output data
out=sim('Progetto_robotics_linear_multiline') ;

% dynamic animation
animation_linear_multiline

