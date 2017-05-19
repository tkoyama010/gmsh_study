Point(1) = {0, 3000, 0, 1.0};
Point(2) = {0, 0, 0, 1.0};
Point(3) = {3000, 0, 0, 1.0};
Point(4) = {3000, 3000, 0, 1.0};
Point(5) = {2250, 3000, 0, 1.0};
Point(6) = {1500, 3000, 0, 1.0};
Point(7) = {750, 3000, 0, 1.0};
Point(8) = {969.670, 2469.670, 0, 1.0};
Point(9) = {2030.330, 2469.670, 0, 1.0};
Point(10) = {0, 1500, 0, 1.0};
Point(11) = {3000, 1500, 0, 1.0};

Line(1)    = {1, 10};   Transfinite Line {1}  = 21 Using Progression 1;
Line(2)    = {10, 2};   Transfinite Line {2}  = 22 Using Progression 1;
Line(3)    = {2, 3};    Transfinite Line {3}  = 16 Using Progression 1;
Line(4)    = {3, 11};   Transfinite Line {4}  = 22 Using Progression 1;
Line(5)    = {11, 4};   Transfinite Line {5}  = 21 Using Progression 1;
Line(6)    = {4, 5};    Transfinite Line {6}  = 13 Using Progression 1;
Circle(7)  = {5, 6, 9}; Transfinite Line {7}  = 21 Using Progression 1;
Line(8)    = {9, 11};   Transfinite Line {8}  = 13 Using Progression 1;
Circle(9)  = {9, 6, 8}; Transfinite Line {9}  = 16 Using Progression 1;
Line(10)   = {8, 10};   Transfinite Line {10} = 13 Using Progression 1;
Line(11)   = {10, 11};  Transfinite Line {11} = 16 Using Progression 1;
Circle(12) = {8, 6, 7}; Transfinite Line {12} = 21 Using Progression 1;
Line(13)   = {7, 1};    Transfinite Line {13} = 13 Using Progression 1;

Line Loop(14) = {1, -10, 12, 13}; Plane Surface(15) = {14}; Transfinite Surface {15};
Line Loop(16) = {10, 11, -8, 9};  Plane Surface(17) = {16}; Transfinite Surface {17};
Line Loop(18) = {8, 5, 6, 7};     Plane Surface(19) = {18}; Transfinite Surface {19};
Line Loop(20) = {2, 3, 4, -11};   Plane Surface(21) = {20}; Transfinite Surface {21};

Recombine Surface {15, 17, 19, 21};
