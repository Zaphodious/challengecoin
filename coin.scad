$fn = 100;
COIN_DIA = 50;

//translate([0,0,-(COIN_DIA/25/2)])
union(){
rotate_extrude()
translate([COIN_DIA/2, 0, 0]) {
    rotate([0, 0, -20]) {
        difference() {
                rotate([0,0,55])
                square([COIN_DIA/15,COIN_DIA/6]);
                translate([-(COIN_DIA/10),-COIN_DIA/90,0])
                circle(COIN_DIA/10);
                translate([(COIN_DIA/20),COIN_DIA/20,0])
                circle(COIN_DIA/20);
        }
    }
}

linear_extrude(COIN_DIA/70)
difference() {
    circle(COIN_DIA/2);
}

}