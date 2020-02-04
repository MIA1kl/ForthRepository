difference(){
cube([5,25,5]);
    for (i = [0:6]){
        translate([2.5,3+3*i,-1])
        cylinder(r=(1.75+0.05*i)/2,h=7,$fn=100);
    }
}   