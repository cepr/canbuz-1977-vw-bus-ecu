$fn=32;
P = 2;

union() {
    difference() {
        translate([0,-4,0])
            color("DodgerBlue")
            cube([P*5.08, 9, 13]);

        union() {
            translate([0,-4+0.5,8])
                union() {
                    rotate([-10,0,0])
                        translate([-5,-10,0])
                            color("DodgerBlue")
                            cube([P*5.08+10,10,10]);
                    translate([-5,-10,0])
                        color("DodgerBlue")
                        cube([P*5.08+10,10,10]);
                }

            for (i = [0:P-1]) {
                translate([5.08*i,0,0]) {
                    translate([0.5,-10+5-1,1.5])
                        color("DodgerBlue")
                        cube([5.08-1,10,6]);
                    translate([2.54-0.7,-10+0.7,-1])
                        color("DodgerBlue")
                        cube([1.4,10,3]);
                    translate([2.54,0,5])
                        color("DodgerBlue")
                        cylinder(20,d=3.5);
                }
            }
        }
    }

    for (i = [0:P-1]) {
        translate([5.08*i,0,0])
            difference() {
                union() {
                    translate([(5.08-4)/2,-5/2,1.6])
                        color("GhostWhite") cube([4,5,5.8]);
                    translate([2.54,0,-6+2.5])
                        color("GhostWhite") cylinder(h=6,d=1);
                    translate([2.54,0,-4+0.5])
                        color("GhostWhite") sphere(d=1);
                }
                translate([2.54,0,3.9])
                    rotate([90,0,0])
                        color("GhostWhite") cylinder(h=20,d=3,center=true);
            }
    }
}
