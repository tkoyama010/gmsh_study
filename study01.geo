// Gmsh project created on Wed Dec 30 22:11:07 2015
Point(1) = {-10, -10, 0, 1.0};
Point(2) = {10, -10, 0, 1.0};
Point(3) = {10, 10, 0, 1.0};
Point(4) = {-10, 10, 0, 1.0};
Point(5) = {40, -10, 0, 1.0};
Point(6) = {40, 10, 0, 1.0};
// cylinder point
Point(7) = {-0.35539, -0.35539, 0, 1.0};
Point(8) = {0.35539, -0.35539, 0, 1.0};
Point(9) = {0.35539, 0.35539, 0, 1.0};
Point(10) = {-0.35539, 0.35539, 0, 1.0};
Point(11) = {0, 0, 0, 1.0};
Spline(1) = {1, 2}; Transfinite Line {1} = 10 Using Progression 1;
Spline(2) = {2, 5}; Transfinite Line {2} = 10 Using Progression 1;
Spline(3) = {4, 3}; Transfinite Line {3} = 10 Using Progression 1;
Spline(4) = {3, 6}; Transfinite Line {4} = 10 Using Progression 1;
Spline(5) = {1, 4}; Transfinite Line {5} = 10 Using Progression 1;
Spline(6) = {2, 3}; Transfinite Line {6} = 10 Using Progression 1;
Spline(7) = {5, 6}; Transfinite Line {7} = 10 Using Progression 1;

// cylinder lines
Circle(8) = {7, 11, 8}; Transfinite Line {8} = 10 Using Progression 1;
Circle(9) = {8, 11, 9}; Transfinite Line {9} = 10 Using Progression 1;
Circle(10) = {9, 11, 10}; Transfinite Line {10} = 10 Using Progression 1;
Circle(11) = {10, 11, 7}; Transfinite Line {11} = 10 Using Progression 1;
Spline(12) = {1, 7};  Transfinite Line {12} = 10 Using Progression 1;
Spline(13) = {2, 8};  Transfinite Line {13} = 10 Using Progression 1;
Spline(14) = {3, 9};  Transfinite Line {14} = 10 Using Progression 1;
Spline(15) = {4, 10}; Transfinite Line {15} = 10 Using Progression 1;

// surface
Line Loop(16) = {12, 8, -13, -1};
Plane Surface(17) = {16};
Line Loop(18) = {13, 9, -14, -6};
Plane Surface(19) = {18};
Line Loop(20) = {14, 10, -15, 3};
Plane Surface(21) = {20};
Line Loop(22) = {15, 11, -12, 5};
Plane Surface(23) = {22};
Line Loop(24) = {2, 7, -4, -6};
Plane Surface(25) = {24};
Transfinite Surface {17};
Transfinite Surface {19};
Transfinite Surface {21};
Transfinite Surface {23};
Transfinite Surface {25};
Recombine Surface {17};
Recombine Surface {19};
Recombine Surface {21};
Recombine Surface {23};
Recombine Surface {25};
Extrude {0, 0, 1} {
  Surface{17, 19, 21, 23, 25};
  Layers{1};
  Recombine;
}
