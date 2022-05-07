


include <OPSC-base.scad>
include <RYOBI-library.scad>




OPSCbuild(shift=200);

// ZZZZ
// Description
module draw1(){
    color="red";
    oiiiR(type="ryobiBattery",ex=1);
    oiiiR(type="ryobiBatteryClips");
    oiiiR(type="ryobiBatteryClipsTop");
}

// ZZZZ
// Description
module draw2(){
    color="orange";
    
    
}

// ZZZZ
// Description
module draw3(){
    color="yellow";
    drawRyobiBatteryClips(color);
}

// ZZZZ
// Description
module draw4(){
    color="green";
    
}

// ZZZZ
// Description
module draw5(){
    color="blue";
    
}

// ZZZZ
// Description
module draw6(){
    color="purple";
    
}

// ZZZZ
// Description
module draw7(){
    color="gray";
    
}

// ZZZZ
// Description
module draw8(){
    color="white";
}

// ZZZZ
// Description
module draw9(){
    color="gray";
    translate([0,0,30]){
    //translate([0,0,0]){
        difference(){
            //postive portion
            union(){
//////batteryTopMain oi
                oiiR("cubeRounded","batteryTopMain",color);
            }
            //negative portion
            union(){
                oiiiR(type="ryobiBatteryClipsTop");
//////batteryTopHole oi
                oiiR("cylinder","batteryTopHole",color);
//////ryobiBattery                                
                oiiiR("ryobiBattery","batteryTopBattery",color);
//////batteryTopZipTieFirstFront oi
                oiiiR("zipTieSmall","batteryTopZipTieFirstFront",color);   
//////batteryTopZipTieFirstBack oi
                oiiiR("zipTieSmall","batteryTopZipTieFirstBack",color);                
//////batteryTopZiptieSecond oi
                oiiiR("zipTieBig","batteryTopZiptieSecond",color);
            }
        }        
    }
}

// ZZZZ
// Description
module draw10(){
    color="pink";
    
    translate([0,0,30]){
    //translate([0,0,00]){
        union(){
            difference(){
                //test Dimensions
                testWidth = 105;
                testHeight = 85-7;
                testDepth = 10;
                testX = -testWidth/2-17+35;
                testY = 0;
                testZ = testDepth+1;
                oi("cubeRounded",x=testX,y=testY,z=testZ,width=testWidth,height=testHeight,depth=testDepth,color=color);
                drawRyobiBattery(color);
                //screwTop Dimensions
                screwTopWidth = 0;
                screwTopHeight = 0;
                screwTopDepth = 0;
                screwTopX = -35;
                screwTopY = -18;
                screwTopZ = testDepth-3;
                oi("countersunkM3",x=screwTopX,y=screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color,rotY=180);
                oi("holeM3",x=screwTopX,y=screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color);
                oi("countersunkM3",x=screwTopX,y=-screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color,rotY=180);
                oi("holeM3",x=screwTopX,y=-screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color);
                holeOffset = 10;
                #oi("holeM6",x=holeOffset,y=25,color=color);
                oi("holeM6",x=holeOffset,y=-25,color=color);
                oi("holeM6",x=holeOffset,y=-15,color=color);
                oi("holeM6",x=holeOffset,y=15,color=color);
                oi("holeM6",x=holeOffset,y=0,color=color);
                
                }
            drawRyobiBatteryClips(color);    
        }
        //drawRyobiBattery("yellow");    
    }
    
    
    
}



module test(){
    //OPSCInsert("OSPCHole",100,0,0);
    //OPSCInsert("holeM3");
    //OPSCInsert("OPSCHoleSlot",x=50,rad=5,rotZ=45);
    //OPSCInsert("M3SocketHeadFull",0,0,0);
    //OPSCInsert("M3SocketHead",0,0,0,length=25);
    //OPSCInsert("cubeRounded",width=20,height=20,depth=6,rad=5);
   //OPSCInsert("cylinder",rad=20,depth=6); //OPSCInsert("cube",width=20,height=20,depth=6,rad=5,alpha=0.3,color="red");
    
}

module ZZZZinsert(item,x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=0,rad=0,color="gray",alpha=1,clearance=0,offset=0){
    color(color,alpha){
            translate([x,y,z]){
                rotate([rotX,rotY,rotZ]){    
                    if(item=="OPSCtest"){
                }
            }
        }
    }
}

