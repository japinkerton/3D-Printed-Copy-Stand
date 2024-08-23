WIDTH = 59;
LENGTH = 105;
ANGLE = 10;
MIN_THICK = 10;

PIN_WIDTH = 8.5;
PIN_DEPTH = 5;
PIN_INSET = 14;

BOLT_HOLE_WIDTH = 7;
BOLT_HOLE_INSET = 14;
HEX_NUT_DEPTH = 5;
HEX_NUT_VERTEX_WIDTH = 13;

CAMERA_HOLE_FROM_BOTTOM = 45;
CAMERA_HOLE_WIDTH = 7;
CAMERA_HOLE_COUNTERSINK_WIDTH = 18;
CAMERA_HOLE_COUNTERSINK_DEPTH = 10;

2CAMERA_HOLE_OFFSET_LEFT = 18;
2CAMERA_HOLE_OFFSET_DOWN = 18;  //Distance from the center camera mounting hole

MAX_THICK = MIN_THICK+tan(ANGLE)*LENGTH;
$fn = 200;

bracket_points =
[
	[0,0,0], [0,WIDTH,0], [LENGTH,0,0], [LENGTH,WIDTH,0],
	[0,0,MIN_THICK], [0,WIDTH,MIN_THICK], [LENGTH,0,MAX_THICK], [LENGTH,WIDTH,MAX_THICK]
	
];

faces = 
[
	[2,3,1,0],[1,5,4,0],[0,4,6,2],[4,5,7,6],[1,3,7,5],[3,2,6,7]
];

difference()
{
	union()
	{
		polyhedron(bracket_points,faces); //Main bracket
		translate([LENGTH-PIN_INSET,WIDTH/2,-PIN_DEPTH]) 	cylinder(PIN_DEPTH,PIN_WIDTH/2,PIN_WIDTH/2);


	};
	translate([BOLT_HOLE_INSET,WIDTH/2,0])	cylinder(MAX_THICK,BOLT_HOLE_WIDTH/2,BOLT_HOLE_WIDTH/2);
	translate([BOLT_HOLE_INSET,WIDTH/2,MIN_THICK-HEX_NUT_DEPTH])	cylinder(MAX_THICK,HEX_NUT_VERTEX_WIDTH/2,HEX_NUT_VERTEX_WIDTH/2, $fn=6);



	rotate([0,-ANGLE,0])
	{
		translate([CAMERA_HOLE_FROM_BOTTOM,WIDTH/2,-CAMERA_HOLE_COUNTERSINK_DEPTH*2])
		union()
		{	
			cylinder(MAX_THICK*2,CAMERA_HOLE_WIDTH/2,CAMERA_HOLE_WIDTH/2);
			cylinder(CAMERA_HOLE_COUNTERSINK_DEPTH*2,CAMERA_HOLE_COUNTERSINK_WIDTH/2,CAMERA_HOLE_COUNTERSINK_WIDTH/2);
		}
	}
	rotate([0,-ANGLE,0])
	{
		translate([CAMERA_HOLE_FROM_BOTTOM+2CAMERA_HOLE_OFFSET_DOWN,WIDTH/2-2CAMERA_HOLE_OFFSET_LEFT,-CAMERA_HOLE_COUNTERSINK_DEPTH*2])
		union()
		{	
			cylinder(MAX_THICK*2,CAMERA_HOLE_WIDTH/2,CAMERA_HOLE_WIDTH/2);
			cylinder(CAMERA_HOLE_COUNTERSINK_DEPTH*2,CAMERA_HOLE_COUNTERSINK_WIDTH/2,CAMERA_HOLE_COUNTERSINK_WIDTH/2);
		}
	}
	
	
};


