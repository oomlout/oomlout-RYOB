//////DEPRECATED
module drawRyobiBatteryV1old(color, tabs=false){
    batteryBaseHeight = 76;
    if(!tabs){
        union(){
            //batteryBase Dimensions
            batteryBaseWidth = 135;
            //batteryBaseHeight = 76;
            batteryBaseDepth = 35;
            batteryBaseX = -batteryBaseWidth/2;
            batteryBaseY = 0;
            batteryBaseZ = 0;
            oi("cube",x=batteryBaseX,y=batteryBaseY,z=batteryBaseZ,width=batteryBaseWidth,height=batteryBaseHeight,depth=batteryBaseDepth,color=color);
        
            baseBumpShift=22;
            //baseBump Dimensions
            baseBumpWidth = 60;
            baseBumpHeight = 62;
            baseBumpDepth = 9;
            baseBumpX = -baseBumpWidth/2-baseBumpShift;
            baseBumpY = 0;
            baseBumpZ = baseBumpDepth;
            oi("cube",x=baseBumpX,y=baseBumpY,z=baseBumpZ,width=baseBumpWidth,height=baseBumpHeight,depth=baseBumpDepth,color=color);
            
            //batteryClipClearance Dimensions
            batteryClipClearanceWidth = 30;
            batteryClipClearanceHeight = 72;
            batteryClipClearanceDepth = baseBumpDepth;
            batteryClipClearanceX = -batteryClipClearanceWidth/2-baseBumpShift-22;
            batteryClipClearanceY = 0;
            batteryClipClearanceZ = baseBumpZ;
            #oi("cube",x=batteryClipClearanceX,y=batteryClipClearanceY,z=batteryClipClearanceZ,width=batteryClipClearanceWidth,height=batteryClipClearanceHeight,depth=batteryClipClearanceDepth,color=color);
            
            
            //stemSquare Dimensions
            stemSquareWidth = 22;
            stemSquareHeight = 28;
            stemSquareDepth = 44;
            stemSquareX = -stemSquareHeight/2-baseBumpShift-stemSquareWidth/2;
            stemSquareY = 0;
            stemSquareZ = baseBumpDepth+stemSquareDepth;
            oi("cube",x=stemSquareX,y=stemSquareY,z=stemSquareZ,width=stemSquareWidth,height=stemSquareHeight,depth=stemSquareDepth,color=color);
            //stemRound Dimensions
            stemRoundDiameter = stemSquareHeight;
            stemRoundDepth = stemSquareDepth;
            stemRoundX = -stemRoundDiameter/2-baseBumpShift;
            stemRoundY = 0;
            stemRoundZ = stemSquareZ;
            oi("cylinder",x=stemRoundX,y=stemRoundY,z=stemRoundZ,rad=stemRoundDiameter/2,depth=stemRoundDepth,color=color);
        }
    }
    if(tabs){
        //tabLeft Dimensions
        difference(){
            tabLeftWidth = 20;
            tabLeftHeight = 6;
            tabLeftDepth = 3.5;
            tabLeftX = -tabLeftWidth/2-46;
            tabLeftY = -(batteryBaseHeight/2-tabLeftHeight/2);
            tabLeftZ = tabLeftDepth;
            oi("cube",x=tabLeftX,y=tabLeftY,z=tabLeftZ,width=tabLeftWidth,height=tabLeftHeight,depth=tabLeftDepth,color=color);
            
            tabCutoutShift = 11;
            //tabCutoutOne Dimensions
            tabCutoutOneWidth = 2;
            tabCutoutOneHeight = 3;
            tabCutoutOneDepth = tabLeftDepth;
            tabCutoutOneX = tabLeftX+tabCutoutShift/2;
            tabCutoutOneY = (tabLeftY+(tabLeftHeight-tabCutoutOneHeight)/2);
            tabCutoutOneZ = tabLeftZ;
            oi("cube",x=tabCutoutOneX,y=tabCutoutOneY,z=tabCutoutOneZ,width=tabCutoutOneWidth,height=tabCutoutOneHeight,depth=tabCutoutOneDepth,color=color);
            //tabCutoutTwo Dimensions
            tabCutoutTwoWidth = tabCutoutOneWidth;
            tabCutoutTwoHeight = tabCutoutOneHeight;
            tabCutoutTwoDepth = tabCutoutOneDepth;
            tabCutoutTwoX = tabLeftX-tabCutoutShift/2;
            tabCutoutTwoY = tabCutoutOneY;
            tabCutoutTwoZ = tabCutoutOneZ;
            oi("cube",x=tabCutoutTwoX,y=tabCutoutTwoY,z=tabCutoutTwoZ,width=tabCutoutTwoWidth,height=tabCutoutTwoHeight,depth=tabCutoutTwoDepth,color=color);
            
        }
        
        //tabRight Dimensions
        difference(){
            tabrightWidth = 20;
            tabrightHeight = 6;
            tabrightDepth = 3.5;
            tabrightX = -tabrightWidth/2-46;
            tabrightY = (batteryBaseHeight/2-tabrightHeight/2);
            tabrightZ = tabrightDepth;
            oi("cube",x=tabrightX,y=tabrightY,z=tabrightZ,width=tabrightWidth,height=tabrightHeight,depth=tabrightDepth,color=color);
            
            tabCutoutShift = 11;
            //tabCutoutOne Dimensions
            tabCutoutOneWidth = 2;
            tabCutoutOneHeight = 3;
            tabCutoutOneDepth = tabrightDepth;
            tabCutoutOneX = tabrightX+tabCutoutShift/2;
            tabCutoutOneY = (tabrightY-(tabrightHeight-tabCutoutOneHeight)/2);
            tabCutoutOneZ = tabrightZ;
            oi("cube",x=tabCutoutOneX,y=tabCutoutOneY,z=tabCutoutOneZ,width=tabCutoutOneWidth,height=tabCutoutOneHeight,depth=tabCutoutOneDepth,color=color);
            //tabCutoutTwo Dimensions
            tabCutoutTwoWidth = tabCutoutOneWidth;
            tabCutoutTwoHeight = tabCutoutOneHeight;
            tabCutoutTwoDepth = tabCutoutOneDepth;
            tabCutoutTwoX = tabrightX-tabCutoutShift/2;
            tabCutoutTwoY = tabCutoutOneY;
            tabCutoutTwoZ = tabCutoutOneZ;
            oi("cube",x=tabCutoutTwoX,y=tabCutoutTwoY,z=tabCutoutTwoZ,width=tabCutoutTwoWidth,height=tabCutoutTwoHeight,depth=tabCutoutTwoDepth,color=color);
            
        }
    }        
    

      
}


module drawRyobiBatteryOld(color, tabs=false, clearance=0){
    batteryBaseHeight = 76;
    batteryClipClearanceWidth = 30;
    baseBumpShift=22;
    batteryClipClearanceX = -batteryClipClearanceWidth/2-baseBumpShift-21;
    if(!tabs){
        union(){
            //batteryBase Dimensions
            batteryBaseWidth = 135;
            //batteryBaseHeight = 76;
            batteryBaseDepth = 35;
            batteryBaseX = -batteryBaseWidth/2;
            batteryBaseY = 0;
            batteryBaseZ = 0;
            oi("cube",x=batteryBaseX,y=batteryBaseY,z=batteryBaseZ,width=batteryBaseWidth,height=batteryBaseHeight,depth=batteryBaseDepth,color=color);
        
            //baseBumpShift=22;
            //baseBump Dimensions
            baseBumpWidth = 60;
            baseBumpHeight = 62;
            baseBumpDepth = 9;
            baseBumpX = -baseBumpWidth/2-baseBumpShift;
            baseBumpY = 0;
            baseBumpZ = baseBumpDepth;
            oi("cube",x=baseBumpX,y=baseBumpY,z=baseBumpZ,width=baseBumpWidth,height=baseBumpHeight,depth=baseBumpDepth,color=color);
            
            //frontBatteryBumpLeft Dimensions
            frontBatteryBumpLeftWidth = 14;
            frontBatteryBumpLeftHeight = 12;
            frontBatteryBumpLeftDepth = 4;
            frontBatteryBumpLeftX = baseBumpX-baseBumpWidth/2-frontBatteryBumpLeftWidth/2;
            frontBatteryBumpLeftY = -15;
            frontBatteryBumpLeftZ = frontBatteryBumpLeftDepth;
            oi("cube",x=frontBatteryBumpLeftX,y=frontBatteryBumpLeftY,z=frontBatteryBumpLeftZ,width=frontBatteryBumpLeftWidth,height=frontBatteryBumpLeftHeight,depth=frontBatteryBumpLeftDepth,color=color);
            
            //frontBatteryBumpRight Dimensions
            frontBatteryBumpRightWidth = frontBatteryBumpLeftWidth;
            frontBatteryBumpRightHeight = frontBatteryBumpLeftHeight;
            frontBatteryBumpRightDepth = frontBatteryBumpLeftDepth;
            frontBatteryBumpRightX = frontBatteryBumpLeftX;
            frontBatteryBumpRightY = -frontBatteryBumpLeftY;
            frontBatteryBumpRightZ = frontBatteryBumpLeftZ;
            oi("cube",x=frontBatteryBumpRightX,y=frontBatteryBumpRightY,z=frontBatteryBumpRightZ,width=frontBatteryBumpRightWidth,height=frontBatteryBumpRightHeight,depth=frontBatteryBumpRightDepth,color=color);
            
            //frontFrontBatteryBump Dimensions
            frontFrontBatteryBumpWidth = 26;
            frontFrontBatteryBumpHeight = 60;
            frontFrontBatteryBumpDepth = frontBatteryBumpLeftDepth;
            frontFrontBatteryBumpX = baseBumpX-baseBumpWidth/2-frontFrontBatteryBumpWidth/2-21;
            frontFrontBatteryBumpY = 0;
            frontFrontBatteryBumpZ = frontFrontBatteryBumpDepth;
            oi("cube",x=frontFrontBatteryBumpX,y=frontFrontBatteryBumpY,z=frontFrontBatteryBumpZ,width=frontFrontBatteryBumpWidth,height=frontFrontBatteryBumpHeight,depth=frontFrontBatteryBumpDepth,color=color);
            
            
            
            //batteryClipClearance Dimensions
            //batteryClipClearanceWidth = 30;
            batteryClipClearanceHeight = 72;
            batteryClipClearanceDepth = baseBumpDepth;
            //batteryClipClearanceX = -batteryClipClearanceWidth/2-baseBumpShift-22;
            batteryClipClearanceY = 0;
            batteryClipClearanceZ = baseBumpZ;
            oi("cube",x=batteryClipClearanceX,y=batteryClipClearanceY,z=batteryClipClearanceZ,width=batteryClipClearanceWidth,height=batteryClipClearanceHeight,depth=batteryClipClearanceDepth,color=color);
            
            
            //stemSquare Dimensions
            stemSquareWidth = 19.5;
            stemSquareHeight = 28+clearance;
            stemSquareDepth = 44;
            stemSquareX = -stemSquareHeight/2-baseBumpShift-stemSquareWidth/2;
            stemSquareY = 0;
            stemSquareZ = baseBumpDepth+stemSquareDepth;
            oi("cube",x=stemSquareX,y=stemSquareY,z=stemSquareZ,width=stemSquareWidth,height=stemSquareHeight,depth=stemSquareDepth,color=color);
            //stemRound Dimensions
            stemRoundDiameter = stemSquareHeight;
            stemRoundDepth = stemSquareDepth;
            stemRoundX = -stemRoundDiameter/2-baseBumpShift;
            stemRoundY = 0;
            stemRoundZ = stemSquareZ;
            oi("cylinder",x=stemRoundX,y=stemRoundY,z=stemRoundZ,rad=stemRoundDiameter/2,depth=stemRoundDepth,color=color);
            //bumpExtra Dimensions
            bumpExtraWidth = 4;
            bumpExtraHeight = 4;
            bumpExtraDepth = 10;
            bumpExtraX = stemSquareX-stemSquareWidth/2-bumpExtraHeight/2;
            bumpExtraY = -stemSquareHeight/2+bumpExtraHeight/2+9;
            bumpExtraZ = baseBumpZ+bumpExtraDepth;
            oi("cube",x=bumpExtraX,y=bumpExtraY,z=bumpExtraZ,width=bumpExtraWidth,height=bumpExtraHeight,depth=bumpExtraDepth,color=color);
        }
    }
    tabClearance = 0.75;
    tabCutoutOneWidth = 4;
    tabCutoutOneHeight = 3;
    tabCutoutShift = 11;
    tabLeftWidth = 20;
    tabLeftHeight = 6;
    tabLeftDepth = 3;
    tabLeftZ = tabLeftDepth+.5;
    tabLeftY = -(batteryBaseHeight/2-tabLeftHeight/2)-tabClearance;
    if(tabs){
        //tabLeft Dimensions
        //tabClearance = 0.75;
        //tabCutoutOneWidth = 4;
        //tabCutoutOneHeight = 3;
        //tabCutoutShift = 11;
        tabLeftX = batteryClipClearanceX;//-tabLeftWidth/2-46;
        difference(){
            //tabLeftWidth = 20;
            //tabLeftHeight = 6;
            //tabLeftDepth = 3;
            //tabLeftX = batteryClipClearanceX;//-tabLeftWidth/2-46;
            //tabLeftY = -(batteryBaseHeight/2-tabLeftHeight/2)-tabClearance;
            //tabLeftZ = tabLeftDepth+.5;
            oi("cube",x=tabLeftX,y=tabLeftY,z=tabLeftZ,width=tabLeftWidth,height=tabLeftHeight,depth=tabLeftDepth,color=color);
            
            //tabCutoutShift = 11;
            //tabCutoutOne Dimensions
            //tabCutoutOneWidth = 4;
            //tabCutoutOneHeight = 3;
            tabCutoutOneDepth = tabLeftDepth;
            tabCutoutOneX = tabLeftX+tabCutoutShift/2;
            tabCutoutOneY = (tabLeftY+(tabLeftHeight-tabCutoutOneHeight)/2);
            tabCutoutOneZ = tabLeftZ;
            #oi("cube",x=tabCutoutOneX,y=tabCutoutOneY,z=tabCutoutOneZ,width=tabCutoutOneWidth,height=tabCutoutOneHeight,depth=tabCutoutOneDepth,color=color);
            //tabCutoutTwo Dimensions
            tabCutoutTwoWidth = tabCutoutOneWidth;
            tabCutoutTwoHeight = tabCutoutOneHeight;
            tabCutoutTwoDepth = tabCutoutOneDepth;
            tabCutoutTwoX = tabLeftX-tabCutoutShift/2;
            tabCutoutTwoY = tabCutoutOneY;
            tabCutoutTwoZ = tabCutoutOneZ;
            #oi("cube",x=tabCutoutTwoX,y=tabCutoutTwoY,z=tabCutoutTwoZ,width=tabCutoutTwoWidth,height=tabCutoutTwoHeight,depth=tabCutoutTwoDepth,color=color);
            
        }
        
        //tabRight Dimensions
        difference(){
            tabrightWidth = tabLeftWidth;
            tabrightHeight = tabLeftHeight;
            tabrightDepth = tabLeftDepth;
            tabrightX = tabLeftX ;
            tabrightY = -tabLeftY;
            tabrightZ = tabLeftZ;
            oi("cube",x=tabrightX,y=tabrightY,z=tabrightZ,width=tabrightWidth,height=tabrightHeight,depth=tabrightDepth,color=color);
            
            //tabCutoutShift = 11;
            //tabCutoutOne Dimensions
            tabCutoutOneWidth = tabCutoutOneWidth;
            tabCutoutOneHeight = tabCutoutOneHeight;
            tabCutoutOneDepth = tabrightDepth;
            tabCutoutOneX = tabrightX+tabCutoutShift/2;
            tabCutoutOneY = (tabrightY-(tabrightHeight-tabCutoutOneHeight)/2);
            tabCutoutOneZ = tabrightZ;
            oi("cube",x=tabCutoutOneX,y=tabCutoutOneY,z=tabCutoutOneZ,width=tabCutoutOneWidth,height=tabCutoutOneHeight,depth=tabCutoutOneDepth,color=color);
            //tabCutoutTwo Dimensions
            tabCutoutTwoWidth = tabCutoutOneWidth;
            tabCutoutTwoHeight = tabCutoutOneHeight;
            tabCutoutTwoDepth = tabCutoutOneDepth;
            tabCutoutTwoX = tabrightX-tabCutoutShift/2;
            tabCutoutTwoY = tabCutoutOneY;
            tabCutoutTwoZ = tabCutoutOneZ;
            oi("cube",x=tabCutoutTwoX,y=tabCutoutTwoY,z=tabCutoutTwoZ,width=tabCutoutTwoWidth,height=tabCutoutTwoHeight,depth=tabCutoutTwoDepth,color=color);
            
        }
    }        
    

      
}