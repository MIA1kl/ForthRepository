w=120;
d=120;
h=6;
wh=10;
wh_gap=5;
count = w/(wh+wh_gap);
difference(){
    cube([w,d,h]);
    for (i = [0:count-2]){
        for (j = [0:count-2]){
            translate([10+(wh+wh_gap)*i,10+(wh+wh_gap)*j,-1])
            cube([wh,wh,h+2]);
        }
    }
}
