$fn = 100;

lilCapRad = 2.9;
capRad = 4.5;
capHeight = 3.6;
plateRad = 33;
boltRad = 2.5;
screwRad = 1.8;
plateThicc = 5;
lilPlateRad = 15;
lilPlateThicc = 2;
quadRad = 8;
triRad = 23.75;
dRodRad = 3.2;
PI = 3.14159;
difference() {

union() {
cylinder(plateThicc, plateRad, plateRad*.9);
translate([0,0,plateThicc]) cylinder(lilPlateThicc, lilPlateRad,0.9*lilPlateRad);
}


for(i = [0:2]) {
    translate([triRad*cos(i*120),triRad*sin(i*120),0]) cylinder(plateThicc+2, boltRad, boltRad);
}

for(i = [0:2]) {
    translate([triRad*cos(i*120+60),triRad*sin(i*120+60),0]) cylinder(plateThicc+2, capRad, capRad);    
}

for(i = [0:4]) {
    translate([quadRad*cos(i*90),quadRad*sin(i*90),0])
    cylinder(plateThicc+lilPlateThicc+2, screwRad, screwRad);
    translate([quadRad*cos(i*90),quadRad*sin(i*90),0])
    cylinder(capHeight, lilCapRad, lilCapRad);
}

//cylinder(capHeight, lilPlateRad, lilPlateRad);
cylinder(plateThicc+lilPlateThicc+2, dRodRad, dRodRad);


}
