// Fin alignment guide

// PURPOSE
// This is a template file for lasercutting thin plates of wood.
// When gluing fins to the body of a model rocket, position the
// body tube in the center, using the distance rings. Then
// mount the fins to the vertical guides and glue them to the
// body tube while holding them in place with e.g. clothespins
// to the guides.

// ASSEMBLY
// 1. Enter material thickness into the code below.
// 2. Cut the template with a laser cutter.
// 3. Glue the three round bottoms together on top of each other
//    with the text "Fin" and the arrows on top. Make sure you
//    turn the right side up.
// 4. Glue the eight guides in place.

$fn=200;

R = 100;        // Outer circle radius
r = 80/2;       // Inner circle radius = Rocket Outer Diameter/2
t = 3;          // Material thickness
s = 40;         // Slot length

module slot() {
    translate([(R+r-s)/2,t/2]) {
        square([s,t]);
    }
}

module guide() {
    square([R-r-10,R-r]);
    translate([(R-r-10-s)/2,-3*t]){
        square([s,3*t]);
    }
}
module bottom() {
    difference() {
        circle(100);
        circle(r);
        slot();
        rotate(90)   { slot(); }
        rotate(180)  { slot(); }
        rotate(270)  { slot(); }
        rotate(60)   { slot(); }
        rotate(-60)  { slot(); }
        rotate(120)  { slot(); }
        rotate(-120) { slot(); }
    }
    difference() {
        circle(r-5);
        circle(r-10);
    }
    difference() {
        circle(r-15);
        circle(r-20);
    }
    difference() {
        circle(r-25);
        circle(r-30);
    }
}
module fin() {
    text(text="Fin",size=8);
    translate([-5,-10]) {
        text(text="→",size=20);
    }
}
difference() {
    bottom();
    rotate(0)   { translate([-23,-68]) { fin(); } }
    rotate(30)  { translate([-23,-68]) { fin(); } }
    rotate(90)  { translate([-23,-68]) { fin(); } }
    rotate(150) { translate([-23,-68]) { fin(); } }
    rotate(180) { translate([-23,-68]) { fin(); } }
    rotate(210) { translate([-23,-68]) { fin(); } }
    rotate(270) { translate([-23,-68]) { fin(); } }
    rotate(330) { translate([-23,-68]) { fin(); } }
}
translate([2*R+5,0])  { bottom(); }
translate([4*R+10,0]) { bottom(); }
translate([-R,-R-R+r-5]) { guide(); }
translate([-R+(R-r-10)+5,-R-R+r-5]) { guide(); }
translate([-R+2*(R-r-10)+10,-R-R+r-5]) { guide(); }
translate([-R+3*(R-r-10)+15,-R-R+r-5]) { guide(); }
translate([-R+4*(R-r-10)+20,-R-R+r-5]) { guide(); }
translate([-R+5*(R-r-10)+25,-R-R+r-5]) { guide(); }
translate([-R+6*(R-r-10)+30,-R-R+r-5]) { guide(); }
translate([-R+7*(R-r-10)+35,-R-R+r-5]) { guide(); }
