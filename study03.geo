Point(1) = {-0, -0, 0, 1.0};
Point(2) = {1.7, -0, 0, 1.0};
Point(3) = {1.7, 1.4, 0, 1.0};
Point(4) = {0.4, 1.2, 0, 1.0};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line Loop(5) = {1, 2, 3, 4};
Plane Surface(6) = {5};
Recombine Surface {6};
Point(5) = {1.7, 4, 0, 1.0};
Point(6) = {0.1, 3.8, 0, 1.0};
Line(7) = {3, 5};
Line(8) = {5, 6};
Line(9) = {6, 4};
Line Loop(10) = {3, -9, -8, -7};
Plane Surface(11) = {10};
Recombine Surface {11};
