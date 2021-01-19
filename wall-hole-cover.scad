
main_d = 72; // main cover diameter
hole_d = 60; // diameter of the hole that needs covering
clamp_depth = 30; // how far the clamps should reach into the whole
clamp_angle = 5; // angle of the clamps (in degrees)

$fn = 360;


cylinder(h=1, d1=main_d-2, d2=main_d);

translate([hole_d/2-3, 0, clamp_depth/2+0.5])
    rotate([0, clamp_angle, 0])
        cube([1, 10, clamp_depth], center=true);

translate([-hole_d/2+3, 0, clamp_depth/2+0.5])
    rotate([0, -clamp_angle, 0])
        cube([1, 10, clamp_depth], center=true);

rotate([0, 0, 90]) {
    translate([hole_d/2-3, 0, clamp_depth/2+0.5])
        rotate([0, clamp_angle, 0])
            cube([1, 10, clamp_depth], center=true);

    translate([-hole_d/2+3, 0, clamp_depth/2+0.5])
        rotate([0, -clamp_angle, 0])
            cube([1, 10, clamp_depth], center=true);
}