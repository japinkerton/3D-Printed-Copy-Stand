BOLT_HEAD_SIZE = 11;
BOLT_HEAD_DEPTH = 4;
KNOB_DIAMETER = 30;
KNOB_DEPTH = 10;
KNOB_SIDES = 6; //4=square, 6=hexagon, etc

difference()
{
	cylinder_outer(KNOB_DEPTH,KNOB_DIAMETER/2,KNOB_SIDES);
	cylinder_outer(BOLT_HEAD_DEPTH,BOLT_HEAD_SIZE/2,6);
	
}


module cylinder_outer(height,radius,fn){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);}