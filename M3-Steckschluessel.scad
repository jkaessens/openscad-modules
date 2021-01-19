// M3
// außendurchmesser sechseck e=6,1
// innendurchmesser sechseck s=5,5
// dicke m=2,4

m=2.4;
e=6.1;
s=5.5;
loch=3;
laenge=30;
wandstaerke=2;
clearance=0.5;

difference() {
    cylinder(h=laenge, d=e+wandstaerke*2, $fn=360);
    cylinder(h=laenge, d=e+clearance, $fn=6);
    translate([-3.5,-(e+wandstaerke*2)/2+1.5,8])
    rotate([90,0,0])
        linear_extrude(height=1.5)
            text("3");
}

