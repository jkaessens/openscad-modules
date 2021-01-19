platform_depth = 3.00; // mm
platform_width_middle = 7.60; // mm
platform_width_outer = 5.10; // mm
platform_width_diff = platform_width_middle - platform_width_outer;
platform_length = 24.7;

$fn = 100;

oberer_staengel = 8.6;
oberer_staengel_r1 = 3;
oberer_staengel_r2 = 4;
oberer_staengel_p = 8.5;
oberer_staengel_w = 1.2;

unterer_staengel_d = 3.4;
unterer_staengel_l = 15;

q_staengel_w = 2.5;

f_staengel_w = 1.5;
f_staengel_d = 5.1;
f_staengel_ofs = 17.2;

// plattform
linear_extrude(height=platform_depth)
    polygon( [
        [0,0], [0,platform_width_outer], 
        [platform_length/2,platform_width_outer+platform_width_diff/2], 
        [platform_length,platform_width_outer],
        [platform_length, 0],
        [platform_length/2,-platform_width_diff/2],
    ]);

// oberer staengel
translate([oberer_staengel_r2/2,platform_width_outer/2,0]) {
scale([ 1.0, (oberer_staengel_r1/oberer_staengel_r2), 1.0])
cylinder(h=oberer_staengel+platform_depth,
    d=oberer_staengel_r2);
};
translate([0,(platform_width_outer-3.14)/2,oberer_staengel+platform_depth])
cube([oberer_staengel_p, 3.14, oberer_staengel_w]);

// unterer staengel
translate([unterer_staengel_d/2,platform_width_outer/2,-unterer_staengel_l])
cylinder(h = unterer_staengel_l, d=unterer_staengel_d);


// quadratischer staengel
translate([platform_length/2-q_staengel_w/2,platform_width_outer+platform_width_diff/2-q_staengel_w,-unterer_staengel_l])
cube([q_staengel_w,q_staengel_w,unterer_staengel_l]);

// flacher staengel
translate([f_staengel_ofs,0,-unterer_staengel_l])
cube([f_staengel_w, f_staengel_d, unterer_staengel_l]);




