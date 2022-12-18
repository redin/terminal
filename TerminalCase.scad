//%cube([220,220,250]);
$fs=0.1;
$fa=0.1;

bdt=20;
bht=10;
bdi=18;
bhi=6;
slot=8;

module button(x,y,z,dt,ht,di,hi,slot,box=false){
    difference(){
                union(){
                    translate([x,y,z+(ht-hi-0.01)])cylinder(h=hi, d=di);
                    translate([x,y,z])cylinder(h=ht-hi, d=dt);
                }
                if (!box) {
                    translate([x,y,z-0.01])cylinder(h=hi, d=slot);
                }
            }

}

difference(){
    translate([5,5,0])cube([210,210,25]);
    translate([10,10,20])cube([200,200,10]);
    translate([15,15,3])cube([190,190,20]);
    translate([10,10,3])cylinder(d=3,h=100);
    translate([10,210,3])cylinder(d=3,h=100);
    translate([210,10,3])cylinder(d=3,h=100);
    translate([210,210,3])cylinder(d=3,h=100);   
}


difference(){
    translate([10,10,20])cube([200,200,5]);
    for (i= [35:25:190]){
        for (j= [35:25:190]){
            button(i,j,18,bdt+1,bht,bdi,bhi,slot,true);
        }
    }
    translate([10,10,3])cylinder(d=3,h=100);
    translate([10,210,3])cylinder(d=3,h=100);
    translate([210,10,3])cylinder(d=3,h=100);
    translate([210,210,3])cylinder(d=3,h=100);   
}
for (i= [35:25:190]){
    for (j= [35:25:190]){
        button(i,j,16,bdt,bht,bdi,bhi,slot);
    }
}