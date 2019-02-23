$fn = 20;
COIN_DIA = 50;
SPHERE_COUNT = 20;

//translate([0,0,-(COIN_DIA/25/2)])
difference(){

union(){
rotate_extrude()
translate([COIN_DIA/2, 0, -10]) {
    rotate([0, 0, -20]) {
        minkowski() {
        difference() {
                rotate([0,0,55])
                translate([1.3,0,0])
                square([COIN_DIA/15,COIN_DIA/6]);
                translate([-(COIN_DIA/8),-COIN_DIA/90,0])
                circle(COIN_DIA/09);
                rotate(5)
                translate([4.5,3,0])
                square(COIN_DIA/7,true);
       }
        }
    }
}

linear_extrude(COIN_DIA/60)
difference() {
    circle(COIN_DIA/2+COIN_DIA/40);
}
}

for (sph = [1:SPHERE_COUNT]) {
    rotate((360/SPHERE_COUNT)*sph)
    translate([COIN_DIA/1.7,0,COIN_DIA/17])
    sphere(COIN_DIA/15);
}


}

