% FILE MAIN CIRCOLARE

clear

%sampling time fed to simulink
Ts=0.01;

%initial condition for the robot
q_iniz_circ=[pi;-pi/2;-pi/2];

%duration of the simulation
Tsim_cir=20;

%output data from simulink
out=sim('Progetto_robotics_circular') ;

%dynamic plot of the simulation
animation_circular



% STROBOSCOPIC VIEW
figure
% 
stroboscopio_circular
