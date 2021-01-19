
$fn=50;

// base place with round corners
translate([7,7,0])
    minkowski() {
        cube([11,4,0.75]);
        cylinder(r=7,h=0.75);
    };


translate([4,5.4+0.75,0]) {
    cube([17,1.5,7]);
    translate([7.75,-1.5,0])
        cube([1.4,3.3,6]);
    translate([12.75,3.5,0])
        cube([1.4,3.3,6]);
        translate([2.75,3.5,0])
        cube([1.4,3.3,6]);
    translate([0,4,0])
        cube([17,1.5,7]);
}

