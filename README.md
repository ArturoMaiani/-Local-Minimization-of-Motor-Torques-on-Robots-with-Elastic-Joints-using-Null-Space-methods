# -Local-Minimization-of-Motor-Torques-on-Robots-with-Elastic-Joints-using-Null-Space-methods

This project was realized using Matlab and Simulink.
Robot manipulators models are usually described as interconnections of rigid bodies for simplicity reasons. In this project, elastic elements are introduced at the level of joints. This non-ideal element introduces complexity in the dynamical model and requires the adoption of a control law at the level of the fourth derivative of the position.

Baldisseri_Maiani_Robotics_II_Project-2.pdf contains the full report of the project.
The following files contain the dynamic simulation of the robot starting from a rectangular trajectory reference.

Save the three files in the same matlab folder

Step 1: Run File_main_lineare_multiline.m
This file starts automatically the simulink model simulation and saves the data. The following step is necessary in order to visualize the actual robot motion.

Step 2: Run animation_linear_multiline.m
