
module drawRyobiBattery(color){
    difference(){
////////////positive portions
        union(){
//////batteryBase oi
            oiiR("cube","batteryBase",color);
//////batteryBaseBump oi
            oiiR("cube","batteryBaseBump",color);   
//////batteryClipClearance oi
            oiiR("cube","batteryClipClearance",color);                     
//////batteryStemSquare oi
            oiiR("cube","batteryStemSquare",color); 
//////batteryStemCircle oi
            oiiR("cylinder","batteryStemCircle",color);
//////batteryStemBump oi
            oiiR("cube","batteryStemBump",color);  
//////frontBumpLeft oi
            oiiR("cube","frontBumpLeft",color);                                    
//////frontBumpLeft oi
            oiiR("cube","frontBumpRight",color);
//////frontBump oi
            oiiR("cube","frontBump",color);             
                                                              
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
            oiiR("cube","batteryTabLeft",color);  
//////batteryTabRight oi
            oiiR("cube","batteryTabRight",color);                  
        }
////////////Negative Bits
        union(){
//////tabCutoutAA oi
            oiiR("cube","tabCutoutAA",color); 
//////tabCutoutAB oi
            oiiR("cube","tabCutoutAB",color);
//////tabCutoutBA oi
            oiiR("cube","tabCutoutBA",color); 
//////tabCutoutBB oi
            oiiR("cube","tabCutoutBB",color);


        }
    }
}

module oiiiR(type,name,color){
   oiiR(type,x=gvvR(str(name,"X")),y=gvvR(str(name,"Y")),z=gvvR(str(name,"Z")),rotX=gvvR(str(name,"RotX")),rotY=gvvR(str(name,"RotY")),rotZ=gvvR(str(name,"RotZ")),color); 
}

module oiiR(type,name,color="gray",x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=100,rad=0,rad2=0,alpha=1,OOwidth=0,OOheight=0,holes=true,negative=true){
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
                                    oiiR("cube","batteryClipSolid",color);  
                                //////batteryClipLeftSolidExtra oi
                                    oiiR("cube","batteryClipSolidExtra",color);     
                                }
                                //negative portion
                                union(){
                                //////batteryClipLeftNegative oi
                                    oiiR("cube","batteryClipNegative",color);
                                //////batteryClipLeftNegativeFront oi
                                    oiiR("cube","batteryClipNegativeFront",color);        
                                //////batteryClipLeftNegativeFront oi
                                    oiiR("cube","batteryClipNegativeRear",color);                    
                                }
                            }                        
                            
                    }

//@@@@@@ryobiBatteryClipsTop Asembly                    
                    else if(type=="ryobiBatteryClipsTop"){
                    //////batteryClipLeft oiii if    
                        #oiiiR("batteryClip","batteryClipLeft",color);    ////ASSEMBLY
                    //////batteryClipRight oiii insert    
                        #oiiiR("batteryClip","batteryClipRight",color);    ////ASSEMBLY  
                    }                        
//@@@@@@ryobiBattery Asembly                    
                    else if(type=="ryobiBattery"){
                        x = -gvvR("batteryStemSquareX");
                        y = 0;
                        z = -gvvR("batteryStemSquareZ");
                        translate([x,y,z]){
                            drawRyobiBattery(color);
                        }
                    } 
//@@@@@@ryobiBatteryClips Asembly                                           
                    else if(type=="ryobiBatteryClips"){
                        x = -gvvR("batteryStemSquareX");
                        y = 0;
                        z = -gvvR("batteryStemSquareZ");
                        translate([x,y,z]){
                            drawRyobiBatteryClips(color);                          
                        }
                    }                        
                    else{    
                        oi(type,x=gvvR(str(name,"X")),y=gvvR(str(name,"Y")),z=gvvR(str(name,"Z")),width=gvvR(str(name,"W")),height=gvvR(str(name,"H")),depth=gvvR(str(name,"D")),rad=gvvR(str(name,"Radius")),rotX=gvvR(str(name,"RotX")),rotY=gvvR(str(name,"RotY")),rotZ=gvvR(str(name,"RotZ")),color=color,name=name);
                    }
                }
        }
    }
}


function gvvR(name) =
name=="TEST" ? "TEST":
//////baseBumpShift variable
    name=="baseBumpShift"       ? 22 :
//////batteryBase dimensions
    name=="batteryBaseW"        ? 135 :
    name=="batteryBaseH"        ? 76 :
    name=="batteryBaseD"        ? 35 :
    name=="batteryBaseX"        ? -gvvR("batteryBaseW")/2 :
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
    name=="batteryBaseBumpX"        ? -gvvR("batteryBaseBumpW")/2-gvvR("baseBumpShift") :
    name=="batteryBaseBumpY"        ? 0 :
    name=="batteryBaseBumpZ"        ? gvvR("batteryBaseBumpD") :
    name=="batteryBaseBumpRadius"       ? 0 :
    name=="batteryBaseBumpRotX"     ? 0 :
    name=="batteryBaseBumpRotY"     ? 0 :
    name=="batteryBaseBumpRotZ"     ? 0 :
//////batteryClipClearance dimensions
    name=="batteryClipClearanceW"       ? 30 :
    name=="batteryClipClearanceH"       ? 72 :
    name=="batteryClipClearanceD"       ? gvvR("batteryBaseBumpD") :
    name=="batteryClipClearanceX"       ? -gvvR("batteryClipClearanceW")/2-gvvR("baseBumpShift")-21 :
    name=="batteryClipClearanceY"       ? 0 :
    name=="batteryClipClearanceZ"       ? gvvR("batteryBaseBumpD") :
    name=="batteryClipClearanceRadius"      ? 0 :
    name=="batteryClipClearanceRotX"        ? 0 :
    name=="batteryClipClearanceRotY"        ? 0 :
    name=="batteryClipClearanceRotZ"        ? 0 :
////////////batteryStem Variablies
//////batteryStemClearance variable
    name=="batteryStemClearance"        ? 2 :
//////batteryStemSquare dimensions
    name=="batteryStemSquareW"      ? 19.5 + gvvR("batteryStemClearance") :
    name=="batteryStemSquareH"      ? 28 + gvvR("batteryStemClearance")  :
    name=="batteryStemSquareD"      ? 44 :
    name=="batteryStemSquareX"      ? -gvvR("batteryStemSquareH")/2-gvvR("baseBumpShift")-gvvR("batteryStemSquareW")/2:
    name=="batteryStemSquareY"      ? 0 :
    name=="batteryStemSquareZ"      ? gvvR("batteryStemSquareD")+gvvR("batteryBaseBumpD") :
//////batteryStemCircle dimensions
    name=="batteryStemCircleW"      ? 0 :
    name=="batteryStemCircleH"      ? 0 :
    name=="batteryStemCircleD"      ? gvvR("batteryStemSquareD") :
    name=="batteryStemCircleX"      ? -gvvR("batteryStemCircleRadius")-gvvR("baseBumpShift") + gvvR("batteryStemClearance") /2 :
    name=="batteryStemCircleY"      ? 0 :
    name=="batteryStemCircleZ"      ? gvvR("batteryStemSquareZ") :
    name=="batteryStemCircleRadius"     ? gvvR("batteryStemSquareH")/2 :
//////batteryStemBump dimensions
    name=="batteryStemBumpW"        ? 4  + gvvR("batteryStemClearance"):
    name=="batteryStemBumpH"        ? 4  + gvvR("batteryStemClearance"):
    name=="batteryStemBumpD"        ? 10 :
    name=="batteryStemBumpX"        ? gvvR("batteryStemSquareX")-gvvR("batteryStemSquareW")/2-gvvR("batteryStemBumpW")/2 + gvvR("batteryStemClearance") /2 :
    name=="batteryStemBumpY"        ? -3 :
    name=="batteryStemBumpZ"        ? gvvR("batteryBaseBumpZ")+gvvR("batteryStemBumpD") :
    name=="batteryStemBumpRadius"       ? 0 :
    name=="batteryStemBumpRotX"     ? 0 :
    name=="batteryStemBumpRotY"     ? 0 :
    name=="batteryStemBumpRotZ"     ? 0 :  
//////frontBumpLeft dimensions
    name=="frontBumpLeftW"      ? 14 :
    name=="frontBumpLeftH"      ? 12 :
    name=="frontBumpLeftD"      ? 4 :
    name=="frontBumpLeftX"      ? gvvR("batteryBaseBumpX")-gvvR("batteryBaseBumpW")/2-gvvR("frontBumpLeftW")/2 :
    name=="frontBumpLeftY"      ? -15 :
    name=="frontBumpLeftZ"      ? gvvR("frontBumpLeftD") :
    name=="frontBumpLeftRadius"     ? 0 :
    name=="frontBumpLeftRotX"       ? 0 :
    name=="frontBumpLeftRotY"       ? 0 :
    name=="frontBumpLeftRotZ"       ? 0 :   
//////frontBumpRight dimensions
    name=="frontBumpRightW"      ? gvvR("frontBumpLeftW") :
    name=="frontBumpRightH"      ? gvvR("frontBumpLeftH") :
    name=="frontBumpRightD"      ? gvvR("frontBumpLeftD") :
    name=="frontBumpRightX"      ? gvvR("frontBumpLeftX") :
    name=="frontBumpRightY"      ? 15 :
    name=="frontBumpRightZ"      ? gvvR("frontBumpLeftZ") :
    name=="frontBumpRightRadius"     ? 0 :
    name=="frontBumpRightRotX"       ? 0 :
    name=="frontBumpRightRotY"       ? 0 :
    name=="frontBumpRightRotZ"       ? 0 :
//////frontBump dimensions
    name=="frontBumpW"      ? 26 :
    name=="frontBumpH"      ? 60 :
    name=="frontBumpD"      ? gvvR("frontBumpLeftD") :
    name=="frontBumpX"      ? gvvR("batteryBaseX")-gvvR("batteryBaseW")/2+gvvR("frontBumpW")/2+7 :
    name=="frontBumpY"      ? 0 :
    name=="frontBumpZ"      ? gvvR("frontBumpLeftD")
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
    name=="batteryTabLeftH"     ? 6 + gvvR("tabExtra") - gvvR("tabClearance"):
    name=="batteryTabLeftD"     ? 3 :
    name=="batteryTabLeftX"     ? gvvR("batteryClipClearanceX") :
    //name=="batteryTabLeftY"     ? -gvvR("batteryBaseH")/2+gvvR("batteryTabLeftH")-gvvR("tabExtra")/2-gvvR("tabClearance")-gvvR("tabExtra")+ gvvR("tabClearance"):
    name=="batteryTabLeftY"     ? -gvvR("batteryBaseBumpH")/2-gvvR("batteryTabLeftH")/2-gvvR("tabClearance"):
    
    name=="batteryTabLeftZ"     ? gvvR("batteryTabLeftD")+gvvR("tabClearance") :
    name=="batteryTabLeftRadius"        ? 0 :
    name=="batteryTabLeftRotX"      ? 0 :
    name=="batteryTabLeftRotY"      ? 0 :
    name=="batteryTabLeftRotZ"      ? 0 :     
//////batteryTabRight dimensions
    name=="batteryTabRightW"        ? gvvR("batteryTabLeftW") :
    name=="batteryTabRightH"        ? gvvR("batteryTabLeftH") :
    name=="batteryTabRightD"        ? gvvR("batteryTabLeftD") :
    name=="batteryTabRightX"        ? gvvR("batteryTabLeftX") :
    name=="batteryTabRightY"        ? -gvvR("batteryTabLeftY") :
    name=="batteryTabRightZ"        ? gvvR("batteryTabLeftZ") :
    name=="batteryTabRightRadius"       ? 0 :
    name=="batteryTabRightRotX"     ? 0 :
    name=="batteryTabRightRotY"     ? 0 :
    name=="batteryTabRightRotZ"     ? 0 :   
//////tabCutoutAA dimensions
    name=="tabCutoutAAW"        ? 4 :
    name=="tabCutoutAAH"        ? 3 :
    name=="tabCutoutAAD"        ? gvvR("batteryTabLeftD") :
    name=="tabCutoutAAX"        ? gvvR("batteryTabLeftX")+gvvR("tabCutoutShift")/2 :
    name=="tabCutoutAAY"        ? gvvR("batteryTabLeftY")+gvvR("batteryTabLeftH")/2-gvvR("tabCutoutAAH")/2 :
    name=="tabCutoutAAZ"        ? gvvR("batteryTabLeftZ") :
    name=="tabCutoutAARadius"       ? 0 :
    name=="tabCutoutAARotX"     ? 0 :
    name=="tabCutoutAARotY"     ? 0 :
    name=="tabCutoutAARotZ"     ? 0 :          
//////tabCutoutAB dimensions
    name=="tabCutoutABW"        ? gvvR("tabCutoutAAW") :
    name=="tabCutoutABH"        ? gvvR("tabCutoutAAH") :
    name=="tabCutoutABD"        ? gvvR("tabCutoutAAD") :
    name=="tabCutoutABX"        ? gvvR("batteryTabLeftX")-gvvR("tabCutoutShift")/2 :
    name=="tabCutoutABY"        ? gvvR("tabCutoutAAY") :
    name=="tabCutoutABZ"        ? gvvR("tabCutoutAAZ") :
    name=="tabCutoutABRadius"       ? 0 :
    name=="tabCutoutABRotX"     ? 0 :
    name=="tabCutoutABRotY"     ? 0 :
    name=="tabCutoutABRotZ"     ? 0 :
//////tabCutoutBA dimensions
    name=="tabCutoutBAW"        ? gvvR("tabCutoutAAW") :
    name=="tabCutoutBAH"        ? gvvR("tabCutoutAAH") :
    name=="tabCutoutBAD"        ? gvvR("tabCutoutAAD") :
    name=="tabCutoutBAX"        ? gvvR("tabCutoutAAX") :
    name=="tabCutoutBAY"        ? -gvvR("tabCutoutAAY") :
    name=="tabCutoutBAZ"        ? gvvR("tabCutoutAAZ") :
    name=="tabCutoutBARadius"       ? 0 :
    name=="tabCutoutBARotX"     ? 0 :
    name=="tabCutoutBARotY"     ? 0 :
    name=="tabCutoutBARotZ"     ? 0 :  
//////tabCutoutBB dimensions
    name=="tabCutoutBBW"        ? gvvR("tabCutoutAAW") :
    name=="tabCutoutBBH"        ? gvvR("tabCutoutAAH") :
    name=="tabCutoutBBD"        ? gvvR("tabCutoutAAD") :
    name=="tabCutoutBBX"        ? gvvR("tabCutoutABX") :
    name=="tabCutoutBBY"        ? -gvvR("tabCutoutAAY") :
    name=="tabCutoutBBZ"        ? gvvR("tabCutoutAAZ") :
    name=="tabCutoutBBRadius"       ? 0 :
    name=="tabCutoutBBRotX"     ? 0 :
    name=="tabCutoutBBRotY"     ? 0 :
    name=="tabCutoutBBRotZ"     ? 0 :                      
////////////Battery Clip Dimensions
//////batteryClipLeft coordinates'
    name=="batteryClipLeftX"        ? - gvvR("batteryStemSquareW")/2 + gvvR("batteryClipSolidW") / 2 + 8 :
    name=="batteryClipLeftY"        ? -gvvR("batteryStemSquareH")/2 +  gvvR("batteryStemClearance") :    
    name=="batteryClipLeftZ"        ? gvvR("batteryClipLeftSolidD") - 11 :    
    name=="batteryClipLeftRotX"     ? 0 :    
    name=="batteryClipLeftRotY"     ? 0 :    
    name=="batteryClipLeftRotZ"     ? 0 :    
//////batteryClipRight coordinates'    
    name=="batteryClipRightX"       ? gvvR("batteryClipLeftX") :
    name=="batteryClipRightY"       ? -gvvR("batteryClipLeftY") :    
    name=="batteryClipRightZ"       ? gvvR("batteryClipLeftZ") :    
    name=="batteryClipRightRotX"        ? 0 :    
    name=="batteryClipRightRotY"        ? 0 :    
    name=="batteryClipRightRotZ"        ? 180 : 
//////batteryClipSolid dimensions
    name=="batteryClipSolidW"       ? 10 :
    name=="batteryClipSolidH"       ? 15 :
    name=="batteryClipSolidD"       ? 25 :
    name=="batteryClipSolidX"       ? 0:
    name=="batteryClipSolidY"       ? - 2 :
    name=="batteryClipSolidZ"       ? gvvR("batteryClipSolidD") :
    name=="batteryClipSolidRadius"      ? 0 :
    name=="batteryClipSolidRotX"        ? 0 :
    name=="batteryClipSolidRotY"        ? 0 :
    name=="batteryClipSolidRotZ"        ? 0 :
//////batteryClipLeftSolidExtra dimensions
    name=="batteryClipSolidExtraShift"      ? 9.25 :
    name=="batteryClipSolidExtraW"      ? gvvR("batteryClipSolidW") :
    name=="batteryClipSolidExtraH"      ? gvvR("batteryClipSolidH") - gvvR("batteryClipSolidExtraShift") :
    name=="batteryClipSolidExtraD"      ? gvvR("batteryClipSolidD")+5 :
    name=="batteryClipSolidExtraX"      ? gvvR("batteryClipSolidX") :
    name=="batteryClipSolidExtraY"      ? gvvR("batteryClipSolidY") - gvvR("batteryClipSolidExtraShift")/2:
    name=="batteryClipSolidExtraZ"      ? gvvR("batteryClipSolidZ") :
//////batteryClipLeftNegative dimensions
    name=="batteryClipNegativeW"        ? 7.5 :
    name=="batteryClipNegativeH"        ? 1.25 :
    name=="batteryClipNegativeD"        ? 8.5 :
    name=="batteryClipNegativeX"        ? gvvR("batteryClipSolidX") :
    name=="batteryClipNegativeY"        ? gvvR("batteryClipSolidY") - 1:
    name=="batteryClipNegativeZ"        ? gvvR("batteryClipSolidZ") - gvvR("batteryClipSolidD") + gvvR("batteryClipNegativeD") :
//////batteryClipLeftNegativeFront dimensions
    name=="batteryClipNegativeFrontW"       ? (gvvR("batteryClipSolidW") - gvvR("batteryClipNegativeW")) / 2  :
    name=="batteryClipNegativeFrontH"       ? 3 :
    name=="batteryClipNegativeFrontD"       ? gvvR("batteryClipNegativeD") :
    name=="batteryClipNegativeFrontX"       ? gvvR("batteryClipNegativeX") - gvvR("batteryClipNegativeW")/2 - gvvR("batteryClipNegativeFrontW") / 2: 
    name=="batteryClipNegativeFrontY"       ? gvvR("batteryClipNegativeY") :
    name=="batteryClipNegativeFrontZ"       ? gvvR("batteryClipNegativeZ") :
//////batteryClipLeftNegativeRear dimensions
    name=="batteryClipNegativeRearW"       ? gvvR("batteryClipNegativeFrontW") :
    name=="batteryClipNegativeRearH"       ? gvvR("batteryClipNegativeFrontH")  :
    name=="batteryClipNegativeRearD"       ? gvvR("batteryClipNegativeFrontD")  :
    name=="batteryClipNegativeRearX"       ? gvvR("batteryClipNegativeX") + gvvR("batteryClipNegativeW")/2 + gvvR("batteryClipNegativeFrontW") / 2 : 
    name=="batteryClipNegativeRearY"       ? gvvR("batteryClipNegativeFrontY")  :
    name=="batteryClipNegativeRearZ"       ? gvvR("batteryClipNegativeFrontZ")  :
0;