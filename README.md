# -Local-Minimization-of-Motor-Torques-on-Robots-with-Elastic-Joints-using-Null-Space-methods

This project was realized using Matlab and Simulink.
Robot manipulators models are usually described as interconnections of rigid bodies for simplicity reasons. In this project, elastic elements are introduced at the level of joints. This non-ideal element introduces complexity in the dynamical model and requires the adoption of a control law at the level of the fourth derivative of the position.

Baldisseri_Maiani_Robotics_II_Project-2.pdf contains the full report of the project.
The repository "Rectangular trajectory" contains files for the dynamic simulation of the robot starting for a rectangular trajectory reference.



## -Matlab & Simulink files

There are three folders: 
1) Linear trajectory
2) Circular trajectory
3) Rectangular trajectory

The same procedure applies for all folders:

-Save the three files in the same matlab folder

-Run the file named: File_main_(...).m 

## -Best performances for each trajectory

Such trajectories are obtained thanks to the minimization of the norm of the torque vector, weighted by the square of the inverse of the inertia matrix. 

https://user-images.githubusercontent.com/100837287/173346341-3067e4a0-7b4b-4c55-a015-7c65dcf40818.mp4


https://user-images.githubusercontent.com/100837287/173352680-fd8cd8c6-e70e-4827-94ae-0d5d75210a4a.mp4


https://user-images.githubusercontent.com/100837287/173352840-d78f3dbc-30f9-4663-9fe6-1b5fbe8a5a86.mp4


