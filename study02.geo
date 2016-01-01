// Gmsh project created on Thu Dec 31 17:35:08 2015
Point(1) = {-0, 0, 0, 1.0};
Point(2) = {1.5, 0, 0, 1.0};
Point(3) = {1.7, 1, 0, 1.0};
Point(4) = {0.3, 1, 0, 1.0};
Spline(1) = {1, 2}; Transfinite Line {1} = 1 Using Progression 1;
Spline(2) = {2, 3}; Transfinite Line {2} = 1 Using Progression 1;
Spline(3) = {3, 4}; Transfinite Line {3} = 1 Using Progression 1;
Spline(4) = {4, 1}; Transfinite Line {4} = 1 Using Progression 1;

Line Loop(5) = {1, 2, 3, 4};
Plane Surface(6) = {5};
