
//difference() {
//    cylinder(r=15,h=200,$fn=6,true);
//    cylinder(r=12,h=200,$fn=6);    
//}
module screw(type = 2, r1 = 15, r2 = 10, n = 7, h = 50, t = 8)
{
	linear_extrude(height = h, twist = 360*t/n, convexity = t)
	difference() {
		circle(r2);
		for (i = [0:n-1]) {

		}
	}
}

module nut(type = 2, r1 = 16, r2 = 23, r3 = 30, s = 6, n = 7, h = 50/5, t = 8/5)
{
	difference() {
		cylinder($fn = s, r = r3, h = h);
		translate([ 0, 0, -h/2 ]) screw(type, r1, r2, n, h*2, t*2);
	}
}






translate([ 30, 0, 0 ])
nut();

