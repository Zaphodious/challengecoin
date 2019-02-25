$fn = 20;
COIN_DIA = 100;
CUNIT = COIN_DIA/10;
SPHERE_COUNT = 20;

//translate([0,0,-(COIN_DIA/25/2)])
rotate_extrude()
translate([-COIN_DIA/2, 0, 0]) {
        union(){
    difference(){
        circle(CUNIT*2);
        translate([0,-CUNIT*1.5,0])
        square([CUNIT*4,CUNIT],true);
        translate([CUNIT*0.9,CUNIT*0.1,0])
        circle(r=CUNIT*1.8);
        translate([-CUNIT*2,0,0])
        square(CUNIT,true);
    }
    translate([-CUNIT*1.95,-CUNIT*1,0])
    square([COIN_DIA/2+CUNIT*1.95,CUNIT*.5]);

        }
        
}
