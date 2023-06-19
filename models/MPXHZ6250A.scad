$fn=50;
h=.380-.190-.014;
e=0.001;
l=(0.41-0.29)/2;

scale(25.4)
    difference() {
        color("dimgrey")
        union() {
            translate([0,0,.014+h/2])
            linear_extrude(h/2)
                color("dimgrey")
                hull() {
                    for (x=[-(.335-.12)/2,(.335-.12)/2], y=[-(.335-.12)/2,(.335-.12)/2])
                        translate([x, y])
                            circle(d=.12);
                }

            translate([0,0,.014])
            linear_extrude(h/2+e)
                color("dimgrey")
                hull() {
                    for (x=[-(.290-.05)/2, (.290-.05)/2], y=[-(.290-.05)/2, (.290-.05)/2])
                        translate([x, y])
                            circle(d=.05);
                }

            translate([0,0,.38-.19])
                color("dimgrey")
                cylinder(h=.19, d=.12);

            j=0.03;
            difference() {
                translate([0,0,.38-.19])
                    color("dimgrey")
                    cylinder(h=j, d=.12+2*j);

                translate([0,0,.38-.19+j])
                    color("dimgrey")
                    rotate_extrude(angle=360, convexity=2)
                        translate([.12/2+j,0,0])
                            circle(r=j);
            }

            p = 0.1;
            for (x = [-p, p])
                for (y = [-p, p])
                    translate([x,y,0])
                        color("dimgrey")
                        cylinder(h=.014+e, d=0.018);
        }
        color("Black")
        translate([0,0,.1])
            cylinder(h=1, d=.12*0.3);
    }

scale(25.4)
    color("gold")
    for (a=[0,180], y=[-0.075:0.050:0.076]) {
        rotate([0,0,a])
        translate([-0.290/2-l/2, y,0])
        rotate([90,0,0])
        linear_extrude(0.016, center=true)
            polygon([
                for (x=[-90:2:90]) [x*l/2/90, (sin(x)+1)*l*0.2+0.01],
                for (x=[90:-2:-90]) [x*l/2/90, (sin(x)+1)*l*0.2],
            ]);
    }
