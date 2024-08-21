# 3D-Printed-Copy-Stand
Open source copy stand for mirrorless/DSLR scanning film

All parts were designed in OpenSCAD for a parametric approach.  Rendered parts as I printed them are located in STL.

## 3D Printed Parts
- Base Bracket
- Camera Bracket
- Camera Bracket Bolt Knob

## Other Parts List
- 1x36” Perforated Steel Tubing
- SIZE Plywood Board
- 9x 1/4-20x2” bolts (stainless)
- 9x 1/4-20 nylon lock nuts (stainless)
- 10x 1/4-20 flat washers (stainless)
- 2x 1/4-20x3/4” button head machine screws (stainless)
- 1x 4-way Macro Focusing Rail (See Notes)

## Printing Parameters
|Parameter|Value|Note|
|-----|-----|-----|
|Slicer|Creality Print ||
|Material|Matterhackers Build Series PETG|Tested PLA, which didn't seem strong enough|
|Infill| 30% cubic||
|Wall Loops|4|Double the default for Creality Print|
|Top/Bottom Shell Layers|8|Double the default for Creality Print|
|Supports|None||


## Notes
### Focusing Rail
The focusing rail I used is an older Neewer one that is no longer available from Amazon.  Its base has 2 tripod screw holes as pictured.  This design is sold under multiple brands.  Other styles of focusing rail may be used, but you will only be able to use 1 of the mounting holes in the camera bracket, and the bracket may want to tilt.  The position of the second hole can be modified by editing following values in cameraBracket.scad:
```
2CAMERA_HOLE_OFFSET_LEFT
2CAMERA_HOLE_OFFSET_DOWN
```
### Camera Bracket Bolt Knob
This bolt only needs to be finger tight.  I used a hexagonal knob to be purposely difficult to grasp and turn.  This is to prevent over-tightening, which can cause the captive nut in the camera bracket to break loose and spin freely.  If this happens you will be unable to remove the camera bracket from the stem.

### Camera Weight
The base bracket easily holds my 1kg mirrorless camera in the highest position (I typically use a much lower position to scan 35mm film).  If you are using a larger DSLR and/or heavier lens, you may need a larger base bracket.  This can be done by increasing the following values in baseBracket.scad:
```
HEIGHT
BASE_WIDTH
TOP_WIDTH
BASE_HOLE_DISTANCE
```
