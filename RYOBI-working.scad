


include <OPSC-base.scad>




OPSCbuild(shift=200);

// ZZZZ
// Description
module draw1(){
    color="red";
    oiii(type="ryobiBattery");
    oiii(type="ryobiBatteryClips");
    oiii(type="ryobiBatteryClipsTop");
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
    //translate([0,0,30]){
    translate([0,0,0]){
        
        difference(){
            //test Dimensions
                testWidth = 50;
                testHeight = 50;
                testDepth = 25;
                testX = -testWidth/2-17;
                testY = 0;
                testZ = testDepth+35;
                oi("cubeRounded",x=testX,y=testY,z=testZ,width=testWidth,height=testHeight,depth=testDepth,color=color);
                drawRyobiBattery(color);
                oiii(type="ryobiBatteryClipsTop");
                screwTopWidth = 0;
                screwTopHeight = 0;
                screwTopDepth = 0;
                screwTopX = -30;
                screwTopY = -18;
                screwTopZ = testDepth-3;
                oi("holeM3",x=screwTopX,y=screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color);
                oi("holeM3",x=screwTopX,y=-screwTopY,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color);
                oi("hole",rad=12.5,x=screwTopX-8,y=0,z=screwTopZ,width=screwTopWidth,height=screwTopHeight,depth=screwTopDepth,color=color);
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


module drawRyobiBattery(color){
    difference(){
////////////positive portions
        union(){
//////batteryBase oi
            oii("cube","batteryBase",color);
//////batteryBaseBump oi
            oii("cube","batteryBaseBump",color);   
//////batteryClipClearance oi
            oii("cube","batteryClipClearance",color);                     
//////batteryStemSquare oi
            oii("cube","batteryStemSquare",color); 
//////batteryStemCircle oi
            oii("cylinder","batteryStemCircle",color);
//////batteryStemBump oi
            oii("cube","batteryStemBump",color);  
//////frontBumpLeft oi
            oii("cube","frontBumpLeft",color);                                    
//////frontBumpLeft oi
            oii("cube","frontBumpRight",color);
//////frontBump oi
            oii("cube","frontBump",color);             
                                                              
        }

////////////negative portions        
        union(){

        }

    }

}

module drawRyobiBatteryClips(color){
    difference(){
        union(){
//////batteryTabLeft oi
            oii("cube","batteryTabLeft",color);  
//////batteryTabRight oi
            oii("cube","batteryTabRight",color);                  
        }
////////////Negative Bits
        union(){
//////tabCutoutAA oi
            oii("cube","tabCutoutAA",color); 
//////tabCutoutAB oi
            oii("cube","tabCutoutAB",color);
//////tabCutoutBA oi
            oii("cube","tabCutoutBA",color); 
//////tabCutoutBB oi
            oii("cube","tabCutoutBB",color);


        }
    }
}

module oiii(type,name,color){
   oii(type,x=gvv(str(name,"X")),y=gvv(str(name,"Y")),z=gvv(str(name,"Z")),rotX=gvv(str(name,"RotX")),rotY=gvv(str(name,"RotY")),rotZ=gvv(str(name,"RotZ")),color); 
}

module oii(type,name,color="gray",x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=100,rad=0,rad2=0,alpha=1,OOwidth=0,OOheight=0,holes=true,negative=true){
    color(color,alpha){
        translate([x,y,z]){
                rotate([rotX,rotY,rotZ]){
                    if(type=="TEST"){
                        t = 0;
                    }else if(type=="TEST2"){
                        t = 0;
                    }
//@@@@@@batteryClip Asembly                        
                    else if(type=="batteryClip"){
                            difference(){
                                //postive portion
                                union(){            
                                //////batteryClipLeftSolid oi
                                    oii("cube","batteryClipSolid",color);  
                                //////batteryClipLeftSolidExtra oi
                                    oii("cube","batteryClipSolidExtra",color);     
                                }
                                //negative portion
                                union(){
                                //////batteryClipLeftNegative oi
                                    oii("cube","batteryClipNegative",color);
                                //////batteryClipLeftNegativeFront oi
                                    oii("cube","batteryClipNegativeFront",color);        
                                //////batteryClipLeftNegativeFront oi
                                    oii("cube","batteryClipNegativeRear",color);                    
                                }
                            }                        
                            
                    }

//@@@@@@ryobiBatteryClipsTop Asembly                    
                    else if(type=="ryobiBatteryClipsTop"){
                    //////batteryClipLeft oiii if    
                        #oiii("batteryClip","batteryClipLeft",color);    ////ASSEMBLY
                    //////batteryClipRight oiii insert    
                        #oiii("batteryClip","batteryClipRight",color);    ////ASSEMBLY  
                    }                        
//@@@@@@ryobiBattery Asembly                    
                    else if(type=="ryobiBattery"){
                        x = -gvv("batteryStemSquareX");
                        y = 0;
                        z = -gvv("batteryStemSquareZ");
                        translate([x,y,z]){
                            drawRyobiBattery(color);
                        }
                    } 
//@@@@@@ryobiBatteryClips Asembly                                           
                    else if(type=="ryobiBatteryClips"){
                        x = -gvv("batteryStemSquareX");
                        y = 0;
                        z = -gvv("batteryStemSquareZ");
                        translate([x,y,z]){
                            drawRyobiBatteryClips(color);                          
                        }
                    }                        
                    else{    
                        oi(type,x=gvv(str(name,"X")),y=gvv(str(name,"Y")),z=gvv(str(name,"Z")),width=gvv(str(name,"W")),height=gvv(str(name,"H")),depth=gvv(str(name,"D")),rad=gvv(str(name,"Radius")),rotX=gvv(str(name,"RotX")),rotY=gvv(str(name,"RotY")),rotZ=gvv(str(name,"RotZ")),color=color,name=name);
                    }
                }
        }
    }
}

function gvv(name) =
name=="TEST" ? "TEST":
//////baseBumpShift variable
    name=="baseBumpShift"       ? 22 :
//////batteryBase dimensions
    name=="batteryBaseW"        ? 135 :
    name=="batteryBaseH"        ? 76 :
    name=="batteryBaseD"        ? 35 :
    name=="batteryBaseX"        ? -gvv("batteryBaseW")/2 :
    name=="batteryBaseY"        ? 0 :
    name=="batteryBaseZ"        ? 0 :
    name=="batteryBaseRadius"       ? 0 :
    name=="batteryBaseRotX"     ? 0 :
    name=="batteryBaseRotY"     ? 0 :
    name=="batteryBaseRotZ"     ? 0 :
//////batteryBaseBump dimensions
    name=="batteryBaseBumpW"        ? 60 :
    name=="batteryBaseBumpH"        ? 62 :
    name=="batteryBaseBumpD"        ? 9 :
    name=="batteryBaseBumpX"        ? -gvv("batteryBaseBumpW")/2-gvv("baseBumpShift") :
    name=="batteryBaseBumpY"        ? 0 :
    name=="batteryBaseBumpZ"        ? gvv("batteryBaseBumpD") :
    name=="batteryBaseBumpRadius"       ? 0 :
    name=="batteryBaseBumpRotX"     ? 0 :
    name=="batteryBaseBumpRotY"     ? 0 :
    name=="batteryBaseBumpRotZ"     ? 0 :
//////batteryClipClearance dimensions
    name=="batteryClipClearanceW"       ? 30 :
    name=="batteryClipClearanceH"       ? 72 :
    name=="batteryClipClearanceD"       ? gvv("batteryBaseBumpD") :
    name=="batteryClipClearanceX"       ? -gvv("batteryClipClearanceW")/2-gvv("baseBumpShift")-21 :
    name=="batteryClipClearanceY"       ? 0 :
    name=="batteryClipClearanceZ"       ? gvv("batteryBaseBumpD") :
    name=="batteryClipClearanceRadius"      ? 0 :
    name=="batteryClipClearanceRotX"        ? 0 :
    name=="batteryClipClearanceRotY"        ? 0 :
    name=="batteryClipClearanceRotZ"        ? 0 :
////////////batteryStem Variablies
//////batteryStemClearance variable
    name=="batteryStemClearance"        ? 2 :
//////batteryStemSquare dimensions
    name=="batteryStemSquareW"      ? 19.5 + gvv("batteryStemClearance") :
    name=="batteryStemSquareH"      ? 28 + gvv("batteryStemClearance")  :
    name=="batteryStemSquareD"      ? 44 :
    name=="batteryStemSquareX"      ? -gvv("batteryStemSquareH")/2-gvv("baseBumpShift")-gvv("batteryStemSquareW")/2:
    name=="batteryStemSquareY"      ? 0 :
    name=="batteryStemSquareZ"      ? gvv("batteryStemSquareD")+gvv("batteryBaseBumpD") :
//////batteryStemCircle dimensions
    name=="batteryStemCircleW"      ? 0 :
    name=="batteryStemCircleH"      ? 0 :
    name=="batteryStemCircleD"      ? gvv("batteryStemSquareD") :
    name=="batteryStemCircleX"      ? -gvv("batteryStemCircleRadius")-gvv("baseBumpShift") + gvv("batteryStemClearance") /2 :
    name=="batteryStemCircleY"      ? 0 :
    name=="batteryStemCircleZ"      ? gvv("batteryStemSquareZ") :
    name=="batteryStemCircleRadius"     ? gvv("batteryStemSquareH")/2 :
//////batteryStemBump dimensions
    name=="batteryStemBumpW"        ? 4  + gvv("batteryStemClearance"):
    name=="batteryStemBumpH"        ? 4  + gvv("batteryStemClearance"):
    name=="batteryStemBumpD"        ? 10 :
    name=="batteryStemBumpX"        ? gvv("batteryStemSquareX")-gvv("batteryStemSquareW")/2-gvv("batteryStemBumpW")/2 + gvv("batteryStemClearance") /2 :
    name=="batteryStemBumpY"        ? -3 :
    name=="batteryStemBumpZ"        ? gvv("batteryBaseBumpZ")+gvv("batteryStemBumpD") :
    name=="batteryStemBumpRadius"       ? 0 :
    name=="batteryStemBumpRotX"     ? 0 :
    name=="batteryStemBumpRotY"     ? 0 :
    name=="batteryStemBumpRotZ"     ? 0 :  
//////frontBumpLeft dimensions
    name=="frontBumpLeftW"      ? 14 :
    name=="frontBumpLeftH"      ? 12 :
    name=="frontBumpLeftD"      ? 4 :
    name=="frontBumpLeftX"      ? gvv("batteryBaseBumpX")-gvv("batteryBaseBumpW")/2-gvv("frontBumpLeftW")/2 :
    name=="frontBumpLeftY"      ? -15 :
    name=="frontBumpLeftZ"      ? gvv("frontBumpLeftD") :
    name=="frontBumpLeftRadius"     ? 0 :
    name=="frontBumpLeftRotX"       ? 0 :
    name=="frontBumpLeftRotY"       ? 0 :
    name=="frontBumpLeftRotZ"       ? 0 :   
//////frontBumpRight dimensions
    name=="frontBumpRightW"      ? gvv("frontBumpLeftW") :
    name=="frontBumpRightH"      ? gvv("frontBumpLeftH") :
    name=="frontBumpRightD"      ? gvv("frontBumpLeftD") :
    name=="frontBumpRightX"      ? gvv("frontBumpLeftX") :
    name=="frontBumpRightY"      ? 15 :
    name=="frontBumpRightZ"      ? gvv("frontBumpLeftZ") :
    name=="frontBumpRightRadius"     ? 0 :
    name=="frontBumpRightRotX"       ? 0 :
    name=="frontBumpRightRotY"       ? 0 :
    name=="frontBumpRightRotZ"       ? 0 :
//////frontBump dimensions
    name=="frontBumpW"      ? 26 :
    name=="frontBumpH"      ? 60 :
    name=="frontBumpD"      ? gvv("frontBumpLeftD") :
    name=="frontBumpX"      ? gvv("batteryBaseX")-gvv("batteryBaseW")/2+gvv("frontBumpW")/2+7 :
    name=="frontBumpY"      ? 0 :
    name=="frontBumpZ"      ? gvv("frontBumpLeftD")
     :
    name=="frontBumpRadius"     ? 0 :
    name=="frontBumpRotX"       ? 0 :
    name=="frontBumpRotY"       ? 0 :
    name=="frontBumpRotZ"       ? 0 :
////////////Battery Clips
//////tabClearance variable
    name=="tabClearance"        ? 1 :
//////tabCutoutShift variable
    name=="tabCutoutShift"      ? 11 :    
//////tabExtra variable
    name=="tabExtra"            ? 2 :    
//////batteryTabLeft dimensions

    name=="batteryTabLeftW"     ? 20 :
    name=="batteryTabLeftH"     ? 6 + gvv("tabExtra") - gvv("tabClearance"):
    name=="batteryTabLeftD"     ? 3 :
    name=="batteryTabLeftX"     ? gvv("batteryClipClearanceX") :
    //name=="batteryTabLeftY"     ? -gvv("batteryBaseH")/2+gvv("batteryTabLeftH")-gvv("tabExtra")/2-gvv("tabClearance")-gvv("tabExtra")+ gvv("tabClearance"):
    name=="batteryTabLeftY"     ? -gvv("batteryBaseBumpH")/2-gvv("batteryTabLeftH")/2-gvv("tabClearance"):
    
    name=="batteryTabLeftZ"     ? gvv("batteryTabLeftD")+gvv("tabClearance") :
    name=="batteryTabLeftRadius"        ? 0 :
    name=="batteryTabLeftRotX"      ? 0 :
    name=="batteryTabLeftRotY"      ? 0 :
    name=="batteryTabLeftRotZ"      ? 0 :     
//////batteryTabRight dimensions
    name=="batteryTabRightW"        ? gvv("batteryTabLeftW") :
    name=="batteryTabRightH"        ? gvv("batteryTabLeftH") :
    name=="batteryTabRightD"        ? gvv("batteryTabLeftD") :
    name=="batteryTabRightX"        ? gvv("batteryTabLeftX") :
    name=="batteryTabRightY"        ? -gvv("batteryTabLeftY") :
    name=="batteryTabRightZ"        ? gvv("batteryTabLeftZ") :
    name=="batteryTabRightRadius"       ? 0 :
    name=="batteryTabRightRotX"     ? 0 :
    name=="batteryTabRightRotY"     ? 0 :
    name=="batteryTabRightRotZ"     ? 0 :   
//////tabCutoutAA dimensions
    name=="tabCutoutAAW"        ? 4 :
    name=="tabCutoutAAH"        ? 3 :
    name=="tabCutoutAAD"        ? gvv("batteryTabLeftD") :
    name=="tabCutoutAAX"        ? gvv("batteryTabLeftX")+gvv("tabCutoutShift")/2 :
    name=="tabCutoutAAY"        ? gvv("batteryTabLeftY")+gvv("batteryTabLeftH")/2-gvv("tabCutoutAAH")/2 :
    name=="tabCutoutAAZ"        ? gvv("batteryTabLeftZ") :
    name=="tabCutoutAARadius"       ? 0 :
    name=="tabCutoutAARotX"     ? 0 :
    name=="tabCutoutAARotY"     ? 0 :
    name=="tabCutoutAARotZ"     ? 0 :          
//////tabCutoutAB dimensions
    name=="tabCutoutABW"        ? gvv("tabCutoutAAW") :
    name=="tabCutoutABH"        ? gvv("tabCutoutAAH") :
    name=="tabCutoutABD"        ? gvv("tabCutoutAAD") :
    name=="tabCutoutABX"        ? gvv("batteryTabLeftX")-gvv("tabCutoutShift")/2 :
    name=="tabCutoutABY"        ? gvv("tabCutoutAAY") :
    name=="tabCutoutABZ"        ? gvv("tabCutoutAAZ") :
    name=="tabCutoutABRadius"       ? 0 :
    name=="tabCutoutABRotX"     ? 0 :
    name=="tabCutoutABRotY"     ? 0 :
    name=="tabCutoutABRotZ"     ? 0 :
//////tabCutoutBA dimensions
    name=="tabCutoutBAW"        ? gvv("tabCutoutAAW") :
    name=="tabCutoutBAH"        ? gvv("tabCutoutAAH") :
    name=="tabCutoutBAD"        ? gvv("tabCutoutAAD") :
    name=="tabCutoutBAX"        ? gvv("tabCutoutAAX") :
    name=="tabCutoutBAY"        ? -gvv("tabCutoutAAY") :
    name=="tabCutoutBAZ"        ? gvv("tabCutoutAAZ") :
    name=="tabCutoutBARadius"       ? 0 :
    name=="tabCutoutBARotX"     ? 0 :
    name=="tabCutoutBARotY"     ? 0 :
    name=="tabCutoutBARotZ"     ? 0 :  
//////tabCutoutBB dimensions
    name=="tabCutoutBBW"        ? gvv("tabCutoutAAW") :
    name=="tabCutoutBBH"        ? gvv("tabCutoutAAH") :
    name=="tabCutoutBBD"        ? gvv("tabCutoutAAD") :
    name=="tabCutoutBBX"        ? gvv("tabCutoutABX") :
    name=="tabCutoutBBY"        ? -gvv("tabCutoutAAY") :
    name=="tabCutoutBBZ"        ? gvv("tabCutoutAAZ") :
    name=="tabCutoutBBRadius"       ? 0 :
    name=="tabCutoutBBRotX"     ? 0 :
    name=="tabCutoutBBRotY"     ? 0 :
    name=="tabCutoutBBRotZ"     ? 0 :                      
////////////Battery Clip Dimensions
//////batteryClipLeft coordinates'
    name=="batteryClipLeftX"        ? - gvv("batteryStemSquareW")/2 + gvv("batteryClipSolidW") / 2 + 8 :
    name=="batteryClipLeftY"        ? -gvv("batteryStemSquareH")/2 +  gvv("batteryStemClearance") :    
    name=="batteryClipLeftZ"        ? gvv("batteryClipLeftSolidD") - 11 :    
    name=="batteryClipLeftRotX"     ? 0 :    
    name=="batteryClipLeftRotY"     ? 0 :    
    name=="batteryClipLeftRotZ"     ? 0 :    
//////batteryClipRight coordinates'    
    name=="batteryClipRightX"       ? gvv("batteryClipLeftX") :
    name=="batteryClipRightY"       ? -gvv("batteryClipLeftY") :    
    name=="batteryClipRightZ"       ? gvv("batteryClipLeftZ") :    
    name=="batteryClipRightRotX"        ? 0 :    
    name=="batteryClipRightRotY"        ? 0 :    
    name=="batteryClipRightRotZ"        ? 180 : 
//////batteryClipSolid dimensions
    name=="batteryClipSolidW"       ? 10 :
    name=="batteryClipSolidH"       ? 15 :
    name=="batteryClipSolidD"       ? 25 :
    name=="batteryClipSolidX"       ? 0:
    name=="batteryClipSolidY"       ? - 2 :
    name=="batteryClipSolidZ"       ? gvv("batteryClipSolidD") :
    name=="batteryClipSolidRadius"      ? 0 :
    name=="batteryClipSolidRotX"        ? 0 :
    name=="batteryClipSolidRotY"        ? 0 :
    name=="batteryClipSolidRotZ"        ? 0 :
//////batteryClipLeftSolidExtra dimensions
    name=="batteryClipSolidExtraShift"      ? 9.25 :
    name=="batteryClipSolidExtraW"      ? gvv("batteryClipSolidW") :
    name=="batteryClipSolidExtraH"      ? gvv("batteryClipSolidH") - gvv("batteryClipSolidExtraShift") :
    name=="batteryClipSolidExtraD"      ? gvv("batteryClipSolidD")+5 :
    name=="batteryClipSolidExtraX"      ? gvv("batteryClipSolidX") :
    name=="batteryClipSolidExtraY"      ? gvv("batteryClipSolidY") - gvv("batteryClipSolidExtraShift")/2:
    name=="batteryClipSolidExtraZ"      ? gvv("batteryClipSolidZ") :
//////batteryClipLeftNegative dimensions
    name=="batteryClipNegativeW"        ? 7.5 :
    name=="batteryClipNegativeH"        ? 1.25 :
    name=="batteryClipNegativeD"        ? 8.5 :
    name=="batteryClipNegativeX"        ? gvv("batteryClipSolidX") :
    name=="batteryClipNegativeY"        ? gvv("batteryClipSolidY") - 1:
    name=="batteryClipNegativeZ"        ? gvv("batteryClipSolidZ") - gvv("batteryClipSolidD") + gvv("batteryClipNegativeD") :
//////batteryClipLeftNegativeFront dimensions
    name=="batteryClipNegativeFrontW"       ? (gvv("batteryClipSolidW") - gvv("batteryClipNegativeW")) / 2  :
    name=="batteryClipNegativeFrontH"       ? 3 :
    name=="batteryClipNegativeFrontD"       ? gvv("batteryClipNegativeD") :
    name=="batteryClipNegativeFrontX"       ? gvv("batteryClipNegativeX") - gvv("batteryClipNegativeW")/2 - gvv("batteryClipNegativeFrontW") / 2: 
    name=="batteryClipNegativeFrontY"       ? gvv("batteryClipNegativeY") :
    name=="batteryClipNegativeFrontZ"       ? gvv("batteryClipNegativeZ") :
//////batteryClipLeftNegativeRear dimensions
    name=="batteryClipNegativeRearW"       ? gvv("batteryClipNegativeFrontW") :
    name=="batteryClipNegativeRearH"       ? gvv("batteryClipNegativeFrontH")  :
    name=="batteryClipNegativeRearD"       ? gvv("batteryClipNegativeFrontD")  :
    name=="batteryClipNegativeRearX"       ? gvv("batteryClipNegativeX") + gvv("batteryClipNegativeW")/2 + gvv("batteryClipNegativeFrontW") / 2 : 
    name=="batteryClipNegativeRearY"       ? gvv("batteryClipNegativeFrontY")  :
    name=="batteryClipNegativeRearZ"       ? gvv("batteryClipNegativeFrontZ")  :
0;