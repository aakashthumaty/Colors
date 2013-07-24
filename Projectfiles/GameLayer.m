//
//  GameLayer.m
//  Tricolors
//
//  Created by Aakash on 6/24/13.
//
//

#import "GameLayer.h"
#import "StartPageLayer.h"
#import "LevelSelectLayer.h"
#import "LevelSelectLayerpack2.h"
#import "LevelSelectLayerpack3.h"
bool neari1x1 = false;
bool neari1x2 = false;
bool neari1x3 = false;
bool neari1x4 = false;
bool neari2x1 = false;
bool neari2x2 = false;
bool neari2x3 = false;
bool neari2x4 = false;
bool neari3x1 = false;
bool neari3x2 = false;
bool neari3x3 = false;
bool neari3x4 = false;
bool neari4x1 = false;
bool neari4x2 = false;
bool neari4x3 = false;
bool neari4x4 = false;






//240 = w and 300 = h


//320 and 480

@implementation GameLayer

-(id) init
{
    if (self = [super initWithColor:ccc4(0,0,0,100)])
    {
    //retreive
        
        
    level = [[NSUserDefaults standardUserDefaults] integerForKey:@"level"];
    
    
    CCMenuItemImage *nextLevel = [CCMenuItemImage itemWithNormalImage:@"nextlevel.png"
                                                        selectedImage:@"nextlevelclicked.png" target:self selector:@selector(nextLevel)];
    
    
    nextLevel.position = ccp(208.5, 60);
    
    
    
    CCMenuItemImage *prevLevel = [CCMenuItemImage itemWithNormalImage:@"prevlevel.png"
                                                        selectedImage:@"prevlevelclicked.png" target:self selector:@selector(prevLevel)];
    
    prevLevel.scale = -1;
    prevLevel.position = ccp(31.5, 60);
    
        
        
        question = [CCMenuItemImage itemWithNormalImage:@"questionmark.png"
                                                           selectedImage:@"questiontapped.png" target:self selector:@selector(question:)];
        
        
        question.position = ccp(90, 60);
        

    
    lvlButts = [CCMenu menuWithItems: nextLevel, prevLevel, question, nil];
    [self addChild: lvlButts z:5];
    lvlButts.position = ccp(40,30);


    
    CCMenuItemImage *backButton = [CCMenuItemImage itemWithNormalImage:@"prevlevel.png"
                                                         selectedImage:@"backButtonclicked.png" target:self selector:@selector(back:)];
    
    backButton.scale = -1;

    backButton.position = ccp(10, 420);
    CCMenu *back;
    back = [CCMenu menuWithItems: backButton, nil];
    [self addChild: back];
    back.position = ccp(40,30);
    
    
        int poo = 0;
if (poo == 0)
        //background
{
    if (level == 1)
    {//perfect = 4
        perfectCount = 4;
        Background = [CCSprite spriteWithFile:@"gridlvl1.1.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
               
    }
    
    if (level == 2)
    {//perfect = 4
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl2.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
    }
    if (level == 3)
    {//perfect = 4
        perfectCount = 4;
        Background = [CCSprite spriteWithFile:@"gridlvl3.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
    }
    if (level == 4)
    {
        perfectCount = 4;
        Background = [CCSprite spriteWithFile:@"gridlvl4.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 5)
    {perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl5.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 6)
    {//perfect = 6
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl6.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 8)
    {//perfect = 12
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl7.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 7)
    {//perfect = 8
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl8.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 9)
    {
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl9.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 10)
    {
        perfectCount = 10;
        Background = [CCSprite spriteWithFile:@"gridlvl10.10.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 11)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl11.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 12)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl12.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 13)
    {
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl13.13.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 14)
    {
        perfectCount = 20;
        Background = [CCSprite spriteWithFile:@"gridlvl14.14.png"];
        Background.position = ccp(160,253);
        [self addChild:Background];
        
    }
    if (level == 15)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl15.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 16)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl16.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 17)
    {
        perfectCount = 10;
        Background = [CCSprite spriteWithFile:@"gridlvl17.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 18)
    {
        perfectCount = 4;
        Background = [CCSprite spriteWithFile:@"gridlvl18.png"];
        Background.position = ccp(160,253);
        [self addChild:Background z:-1];
        
    }
    if (level == 19)
    {
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl19.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 20)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl20.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 201)
    {
        perfectCount = 4;
        Background = [CCSprite spriteWithFile:@"gridlvl201.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 202)
    {
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl202.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 203)
    {
        perfectCount = 10;
        Background = [CCSprite spriteWithFile:@"gridlvl203.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 204)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl204.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 205)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl205.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 206)
    {
        perfectCount = 9;
        Background = [CCSprite spriteWithFile:@"gridlvl206.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 207)
    {
        perfectCount = 7;
        Background = [CCSprite spriteWithFile:@"gridlvl207.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 208)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl208.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 209)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl209..png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    
    if (level == 210)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl210..png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 211)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl211.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 212)
    {
        perfectCount = 12;
        Background = [CCSprite spriteWithFile:@"gridlvl212.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 213)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl213.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 214)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl214.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 215)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl215.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 216)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl216.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 217)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl217.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
   
    if (level == 218)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl218.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 219)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl219.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 220)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl220.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 301)
    {
        perfectCount = 8;
        Background = [CCSprite spriteWithFile:@"gridlvl301.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 302)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl302.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 303)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl303.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 304)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl304.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 305)
    {
        perfectCount = 6;
        Background = [CCSprite spriteWithFile:@"gridlvl305.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 306)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl306.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 307)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl307.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 308)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl308.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 309)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl309.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 310)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl310.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 311)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl311.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 312)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl312.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 313)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl313.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }if (level == 314)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl314.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 315)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl315.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 316)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl316.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 310)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl310.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 317)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl317.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 318)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl318.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 319)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl319.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
    if (level == 320)
    {
        perfectCount = 16;
        Background = [CCSprite spriteWithFile:@"gridlvl320.png"];
        Background.position = ccp(160,254);
        [self addChild:Background z:-1];
        
    }
}

    
    //background
    
    perfectCountString = [NSString stringWithFormat:@"perfect = %i", perfectCount];
    perfectCountLabel = [CCLabelTTF labelWithString:perfectCountString
                                         dimensions:CGSizeMake(200,100) alignment:UITextAlignmentCenter
                                           fontName:@"Arial" fontSize:15.0];
    perfectCountLabel.position = ccp(150, 360);

    
    
    [self addChild:perfectCountLabel z:1];

    
    
        //operation
    operationCountString = [NSString stringWithFormat:@"mixes = %i", operationCount];

    
    OperationCount = [CCLabelTTF labelWithString:operationCountString
                                      dimensions:CGSizeMake(200,100) alignment:UITextAlignmentCenter
                                        fontName:@"Arial" fontSize:15.0];
    OperationCount.position = ccp(73, 360);
    [self addChild:OperationCount z:1];
    
        
    
    
   

    
    
        //pause
        pauseButton = [CCMenuItemImage itemWithNormalImage:@"pauseButt.png"
                                                              selectedImage:@"pauseButtSel.png" target:self selector:@selector(pauseButtonTapped:)];
    pauseButton.position = ccp(50,410);

        //pause
    
    
    
    
    
        //TIMER
        [self schedule:@selector(timerUpdate:) interval:1];
    timerSeconds = 100;
    timerSecondsString = [NSString stringWithFormat:@"%d", timerSeconds];
    
    timerLabel = [CCLabelTTF labelWithString:timerSecondsString
                                  dimensions:CGSizeMake(100, 100) alignment:UITextAlignmentCenter
                                    fontName:@"Arial" fontSize:25.0];
    timerLabel.position = ccp(295, 420);
    timerLabel.color=ccc3(255,255,255);
    [self addChild:timerLabel];
    
    [self schedule:@selector(timerUpdate:) interval:1];

    [self scheduleUpdate];
    //TIMER
    
//////////////////////// LVL 1 ////////////////////////////////
    if(level == 1)
{
    i1x1 = 1;
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(31.5,120);

    
    i1x2 = 1;
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(91,120);
    
    i1x3 = 1;
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(149,120);
    
    i1x4 = 1;
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    NSLog(@"%@", imageSet1x4);
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(208.5,120);
    
    
    i2x1 = 1;
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(31.5,190);
    
    
    
    i2x2 = 0;
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(91,190);
    
    
    i2x3 = 0;
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(149,190);
    
    i2x4 = 1;
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(208.5,190);
    
    
    i3x1 = 1;
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(31.5,260);
    
    
    i3x2 = 0;
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(91,260);
    
    i3x3 = 0;
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(149,260);
    
    i3x4 = 1;
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(208.5,260);
    
    i4x1 = 1;
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(31.5,330);
    
    i4x2 = 1;
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(91,330);
    
    i4x3 = 1;
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(149,330);
    
    i4x4 = 1;
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(208.5,330);
    
    game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
    
    
    game.position = ccp(40, 30);
    
    [self addChild: game];


}
    //////////////////////// LVL 1 ////////////////////////////////
    
    
    
    //////////////////////// LVL 2 ////////////////////////////////

    if(level == 2)
{
        i1x1 = 2;
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(31.5,120);
    
    
    i1x2 = 2;
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(91,120);
    
    i1x3 = 2;
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(149,120);
    
    i1x4 = 2;
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    NSLog(@"%@", imageSet1x4);
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(208.5,120);
    
    
    i2x1 = 2;
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(31.5,190);
    
    
    
   i2x2 = 1;
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(91,190);
    
    i2x3 = 1;
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(149,190);
    
    i2x4 = 2;
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(208.5,190);
    
    
    i3x1 = 2;
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(31.5,260);
    
    
    i3x2 = 1;
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(91,260);
    
    
    i3x3 = 1;
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(149,260);
    
    i3x4 = 2;
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(208.5,260);
    
    i4x1 = 2;
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(31.5,330);
    
   i4x2 = 1;
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(91,330);
    
    i4x3 = 1;
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(149,330);
    
    i4x4 = 2;
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(208.5,330);
    
    
    game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
    
    
    game.position = ccp(40, 30);
    
    [self addChild: game];
}
    //////////////////////// LVL 2 ////////////////////////////////
    
    
    
    //////////////////////// LVL 3 ////////////////////////////////

    if(level == 3)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
         
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;

        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
       i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
       
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
    
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }


    //////////////////////// LVL 3 ////////////////////////////////

    
    //////////////////////// LVL 4 ////////////////////////////////

    if(level == 4)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }

    
    //////////////////////// LVL 4 ////////////////////////////////

    
    //////////////////////// LVL 5 ////////////////////////////////

    
    
    if(level == 5)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }

    //////////////////////// LVL 5 ////////////////////////////////

    
    
    //////////////////////// LVL 6 ////////////////////////////////

    
    if(level == 6)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        

        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
        
        
        //////////////////////// LVL 6 ////////////////////////////////
    
    
    
        //////////////////////// LVL 7 ////////////////////////////////
   
    if(level == 7)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
}
        
        
        
        //////////////////////// LVL 7 ////////////////////////////////
    
    
    
    
        //////////////////////// LVL 8 ////////////////////////////////

    if(level == 8)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 8 ////////////////////////////////
    
    
    //////////////////////// LVL 9 ////////////////////////////////
    
    if(level == 9)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 9 ////////////////////////////////
    
    //////////////////////// LVL 10 ////////////////////////////////
    
    if(level == 10)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 10 ////////////////////////////////
    
    
    //////////////////////// LVL 11 ////////////////////////////////
    
    if(level == 11)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 11 ////////////////////////////////
    
    
    //////////////////////// LVL 12 ////////////////////////////////
    
    if(level == 12)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 12 ////////////////////////////////
    
    
    //////////////////////// LVL 13 ////////////////////////////////
    
    if(level == 13)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 13 ////////////////////////////////
    
    
    //////////////////////// LVL 14 ////////////////////////////////
    
    if(level == 14)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 14 ////////////////////////////////
    
    
    
    //////////////////////// LVL 15 ////////////////////////////////
    
    if(level == 15)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 15 ////////////////////////////////
    
    
    //////////////////////// LVL 16 ////////////////////////////////
    
    if(level == 16)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 16 ////////////////////////////////
    
    //////////////////////// LVL 17 ////////////////////////////////
    
    if(level == 17)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 17 ////////////////////////////////

    
    
    //////////////////////// LVL 18 ////////////////////////////////
    
    if(level == 18)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 18 ////////////////////////////////

    //////////////////////// LVL 19 ////////////////////////////////
    
    if(level == 19)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 19 ////////////////////////////////
    
    
    //////////////////////// LVL 20 ////////////////////////////////
    
    if(level == 20)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 20 ////////////////////////////////
    
    //////////////////////// LVL 201 ////////////////////////////////
    
    if(level == 201)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 201 ////////////////////////////////
    
    
    //////////////////////// LVL 202 ////////////////////////////////
    
    if(level == 202)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 3;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 202 ////////////////////////////////
    
    
    
    //////////////////////// LVL 203 ////////////////////////////////
    
    if(level == 203)
    {
        i1x1 = 3;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 3;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 3;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 3;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 203 ////////////////////////////////
    
    
    
    //////////////////////// LVL 204 ////////////////////////////////
    
    if(level == 204)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 3;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 204 ////////////////////////////////
    
    
    
    
    //////////////////////// LVL 205 ////////////////////////////////
    
    if(level == 205)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 3;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 205 ////////////////////////////////
    
    
    
    //////////////////////// LVL 206 ////////////////////////////////
    
    if(level == 206)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 206 ////////////////////////////////
    
    
    
    //////////////////////// LVL 207 ////////////////////////////////
    
    if(level == 207)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 207 ////////////////////////////////
    
    
    //////////////////////// LVL 208 ////////////////////////////////
    
    if(level == 208)
    {
        i1x1 = 3;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 208 ////////////////////////////////
    
    
    //////////////////////// LVL 209 ////////////////////////////////
    
    if(level == 209)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 3;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 209 ////////////////////////////////
    
  
    //////////////////////// LVL 210 ////////////////////////////////
    
    if(level == 210)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 210 ////////////////////////////////
    
    //////////////////////// LVL 211 ////////////////////////////////
    
    if(level == 211)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 3;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 211 ////////////////////////////////
    
    
    //////////////////////// LVL 212 ////////////////////////////////
    
    if(level == 212)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 212 ////////////////////////////////
    
    
    
    //////////////////////// LVL 213 ////////////////////////////////
    
    if(level == 213)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 213 ////////////////////////////////
    
    
    
    //////////////////////// LVL 214 ////////////////////////////////
    
    if(level == 214)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 3;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 3;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 214 ////////////////////////////////
    
    
    
    //////////////////////// LVL 215 ////////////////////////////////
    
    if(level == 215)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 215 ////////////////////////////////
    
    
    
    //////////////////////// LVL 216 ////////////////////////////////
    
    if(level == 216)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 216 ////////////////////////////////
    
    
    
    //////////////////////// LVL 217 ////////////////////////////////
    
    if(level == 217)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 217 ////////////////////////////////
    
    
    //////////////////////// LVL 218 ////////////////////////////////
    
    if(level == 218)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 218 ////////////////////////////////
    
    
    //////////////////////// LVL 219 ////////////////////////////////
    
    if(level == 219)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 219 ////////////////////////////////
    
    
    
    
    //////////////////////// LVL 220 ////////////////////////////////
    
    if(level == 220)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 220 ////////////////////////////////
    
    
    //////////////////////// LVL 301 ////////////////////////////////
    
    if(level == 301)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 301 ////////////////////////////////
    
    
    
    //////////////////////// LVL 302 ////////////////////////////////
    
    if(level == 302)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 302 ////////////////////////////////
    
    
    
    //////////////////////// LVL 303 ////////////////////////////////
    
    if(level == 303)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 4;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 4;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 4;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 4;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 1;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 4;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 4;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 4;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 303 ////////////////////////////////
    
    
    
    //////////////////////// LVL 304 ////////////////////////////////
    
    if(level == 304)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 4;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 4;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 4;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 4;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 4;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 4;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 4;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 304 ////////////////////////////////
    
    
    
    
    //////////////////////// LVL 305 ////////////////////////////////
    
    if(level == 305)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 1;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 305 ////////////////////////////////
    
    
    //////////////////////// LVL 306 ////////////////////////////////
    
    if(level == 306)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 4;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 4;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 4;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 4;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 4;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 306 ////////////////////////////////
    
    
    
    //////////////////////// LVL 307 ////////////////////////////////
    
    if(level == 307)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 4;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 4;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 4;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 0;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 0;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 4;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 307 ////////////////////////////////
    
    //////////////////////// LVL 308 ////////////////////////////////
    
    if(level == 308)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 4;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 4;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 4;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 308 ////////////////////////////////
    
    
    
    //////////////////////// LVL 309 ////////////////////////////////
    
    if(level == 309)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 4;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 309 ////////////////////////////////
    
    
    //////////////////////// LVL 310 ////////////////////////////////
    
    if(level == 310)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 4;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 4;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 310 ////////////////////////////////
    
    //////////////////////// LVL 311 ////////////////////////////////
    
    if(level == 311)
    {
        i1x1 = 3;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 4;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 4;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 4;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 4;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 4;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 4;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 4;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 3;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 3;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 311 ////////////////////////////////
    
    //////////////////////// LVL 312 ////////////////////////////////
    
    if(level == 312)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 4;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 2;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 4;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 4;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 2;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 4;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 312 ////////////////////////////////
    
    //////////////////////// LVL 313 ////////////////////////////////
    
    if(level == 313)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 1;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 313 ////////////////////////////////
    
    
    //////////////////////// LVL 314 ////////////////////////////////
    
    if(level == 314)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 314 ////////////////////////////////
    
    //////////////////////// LVL 315 ////////////////////////////////
    
    if(level == 315)
    {
        i1x1 = 0;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 2;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 2;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 0;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 0;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 2;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 2;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 0;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 2;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 2;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 2;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 2;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 315 ////////////////////////////////
    
    //////////////////////// LVL 316 ////////////////////////////////
    
    if(level == 316)
    {
        i1x1 = 3;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 3;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 3;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 3;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 3;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 3;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 3;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 1;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 2;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 316 ////////////////////////////////
    
    //////////////////////// LVL 317 ////////////////////////////////
    
    if(level == 317)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 1;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 1;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 0;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 0;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 0;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 317 ////////////////////////////////
    
    //////////////////////// LVL 318 ////////////////////////////////
    
    if(level == 318)
    {
        i1x1 = 2;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 3;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 3;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 3;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 3;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 4;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 3;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 3;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 0;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 4;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 3;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 3;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 318 ////////////////////////////////
    
    
    //////////////////////// LVL 319 ////////////////////////////////
    
    if(level == 319)
    {
        i1x1 = 4;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 4;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 2;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 4;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 4;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 2;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 2;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 4;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 4;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 2;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 4;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 4;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 319 ////////////////////////////////
    
    
    //////////////////////// LVL 320 ////////////////////////////////
    
    if(level == 320)
    {
        i1x1 = 1;
        NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
        NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
        int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                        selectedImage:imageSet1x1Sel target:nil selector:nil];
        int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                           selectedImage:imageSet1x1 target:nil selector:nil];
        int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
        int1x1toggle.position = ccp(31.5,120);
        
        
        i1x2 = 0;
        NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
        NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
        
        int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                        selectedImage:imageSet1x2Sel target:nil selector:nil];
        int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                           selectedImage:imageSet1x2 target:nil selector:nil];
        int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
        int1x2toggle.position = ccp(91,120);
        
        i1x3 = 0;
        NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
        NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
        
        int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                        selectedImage:imageSet1x3Sel target:nil selector:nil];
        int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                           selectedImage:imageSet1x3 target:nil selector:nil];
        int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
        int1x3toggle.position = ccp(149,120);
        
        i1x4 = 1;
        NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
        NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
        
        NSLog(@"%@", imageSet1x4);
        int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                        selectedImage:imageSet1x4Sel target:nil selector:nil];
        int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                           selectedImage:imageSet1x4 target:nil selector:nil];
        int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
        int1x4toggle.position = ccp(208.5,120);
        
        
        i2x1 = 1;
        NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
        NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
        
        int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                        selectedImage:imageSet2x1Sel target:nil selector:nil];
        int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                           selectedImage:imageSet2x1 target:nil selector:nil];
        int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
        int2x1toggle.position = ccp(31.5,190);
        
        
        
        i2x2 = 1;
        
        NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
        NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
        
        int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                        selectedImage:imageSet2x2Sel target:nil selector:nil];
        int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                           selectedImage:imageSet2x2 target:nil selector:nil];
        int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
        int2x2toggle.position = ccp(91,190);
        
        
        i2x3 = 1;
        
        NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
        NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
        
        int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                        selectedImage:imageSet2x3Sel target:nil selector:nil];
        int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                           selectedImage:imageSet2x3 target:nil selector:nil];
        int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
        int2x3toggle.position = ccp(149,190);
        
        i2x4 = 1;
        NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
        NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
        
        int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                        selectedImage:imageSet2x4Sel target:nil selector:nil];
        int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                           selectedImage:imageSet2x4 target:nil selector:nil];
        int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
        int2x4toggle.position = ccp(208.5,190);
        
        
        i3x1 = 1;
        NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
        NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
        
        int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                        selectedImage:imageSet3x1Sel target:nil selector:nil];
        int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                           selectedImage:imageSet3x1 target:nil selector:nil];
        int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
        int3x1toggle.position = ccp(31.5,260);
        
        
        i3x2 = 0;
        NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
        NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
        
        int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                        selectedImage:imageSet3x2Sel target:nil selector:nil];
        int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                           selectedImage:imageSet3x2 target:nil selector:nil];
        int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
        int3x2toggle.position = ccp(91,260);
        
        
        i3x3 = 0;
        
        NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
        NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
        
        int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                        selectedImage:imageSet3x3Sel target:nil selector:nil];
        int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                           selectedImage:imageSet3x3 target:nil selector:nil];
        int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
        int3x3toggle.position = ccp(149,260);
        
        i3x4 = 1;
        
        NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
        NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
        
        int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                        selectedImage:imageSet3x4Sel target:nil selector:nil];
        int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                           selectedImage:imageSet3x4 target:nil selector:nil];
        int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
        int3x4toggle.position = ccp(208.5,260);
        
        i4x1 = 0;
        NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
        NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
        
        int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                        selectedImage:imageSet4x1Sel target:nil selector:nil];
        int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                           selectedImage:imageSet4x1 target:nil selector:nil];
        int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
        int4x1toggle.position = ccp(31.5,330);
        
        i4x2 = 1;
        NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
        NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
        
        int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                        selectedImage:imageSet4x2Sel target:nil selector:nil];
        int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                           selectedImage:imageSet4x2 target:nil selector:nil];
        int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
        int4x2toggle.position = ccp(91,330);
        
        i4x3 = 1;
        NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
        NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
        
        int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                        selectedImage:imageSet4x3Sel target:nil selector:nil];
        int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                           selectedImage:imageSet4x3 target:nil selector:nil];
        int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
        int4x3toggle.position = ccp(149,330);
        
        i4x4 = 0;
        NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
        NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
        
        int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                        selectedImage:imageSet4x4Sel target:nil selector:nil];
        int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                           selectedImage:imageSet4x4 target:nil selector:nil];
        int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                               selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
        int4x4toggle.position = ccp(208.5,330);
        
        
        game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
        
        
        game.position = ccp(40, 30);
        
        [self addChild: game];
    }
    
    
    //////////////////////// LVL 320 ////////////////////////////////
    return self;
	
}
}

-(void) nextLevel
{   if(level != 20 && level != 220 && level != 320)
{
    level ++;
    [[NSUserDefaults standardUserDefaults] setInteger:level forKey:@"level"];

    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[GameLayer alloc]init]]];
    
}
    
}
-(void) prevLevel
{
     if(level != 1 && level != 201 && level != 301)
    {
        level --;
        [[NSUserDefaults standardUserDefaults] setInteger:level forKey:@"level"];
        
        [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[GameLayer alloc]init]]];
    }
    
    
}

-(void) question: (id)sender

{
    [[CCDirector sharedDirector] pause];
    
    
    
    
    questionLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 200) width: 320 height: 480];
    questionLayer.position = ccp(0,0);
    
    
    int level = [[NSUserDefaults standardUserDefaults] integerForKey:@"level"];
    
    
    
    if(level < 200)
    {
        CCSprite *colorCombo = [CCSprite spriteWithFile:@"3colorcombos.png"];
        colorCombo.position = ccp(160,240);
        
        
        [self addChild:colorCombo z:11];
        
      
        
    }
    else if(level < 300)
    {
        CCSprite *colorCombo = [CCSprite spriteWithFile:@"6colorcombo.png"];
        colorCombo.position = ccp(160,240);
        [self addChild:colorCombo z:11];
    }
    else
    {
        CCSprite *colorCombo = [CCSprite spriteWithFile:@"pack3combos.png"];
        colorCombo.position = ccp(160,240);
        [self addChild:colorCombo z:11];

    }

    
    [self dotsEffect:(colorCombo)];
    
    id dropdown = [CCMoveTo actionWithDuration:6.0f position:ccp(160, 240 + 140)];
    id jump = [CCJumpBy actionWithDuration:0.75f position:CGPointZero height:15 jumps:3];
    id repeatJump = [CCRepeat actionWithAction:jump times:3];
    [colorCombo runAction:[CCSequence actions:dropdown, repeatJump, nil]];


    
    
    questionMenu = [CCMenu menuWithItems:colorCombo, nil];
    questionMenu.position = ccp(40,30);
    [self addChild:questionMenu z:20];
    
    
    
    
    
    [self addChild:questionLayer z:8];
    
    game.isTouchEnabled = NO;
    lvlButts.isTouchEnabled = NO;
    
    
    
}



-(void) dotsEffect:(CCSprite *) colorCombo
{
    id dropdown = [CCMoveTo actionWithDuration:6.0f position:ccp(160, 240 + 140)];
    id jump = [CCJumpBy actionWithDuration:0.75f position:CGPointZero height:15 jumps:3];
    id repeatJump = [CCRepeat actionWithAction:jump times:3];
    [colorCombo runAction:[CCSequence actions:dropdown, repeatJump, nil]];
}



-(void) back: (id)sender
{
    if (level < 200)
    {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[LevelSelectLayer alloc]init]]];
        
    }
    else if (level < 300)
    {
        [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[LevelSelectLayerpack2 alloc]init]]];
        
        
        
       
    }
    else
    {
        [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[LevelSelectLayerpack3 alloc]init]]];
        
        

    }
}




//**************timer*******************

-(void) timerUpdate:(ccTime)delta
{    if(timerSeconds != 0 && timerBonusSeconds <= 0){
        timerSeconds--;
    
    
        timerSecondsString = [NSString stringWithFormat:@"%d", timerSeconds];
    
        [timerLabel setString:timerSecondsString];

}
else if(timerSeconds == 0)
{

    [self GameOverYouLose];
}
     
}

//**************timer*******************



//******Pause********

-(void) pauseButtonTapped: (id)sender
{
    [[CCDirector sharedDirector] pause];

    
   
    pauseLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 250) width: 320 height: 480];
    
    
    
    
    pauseLayer.position = ccp(0,0);
    
    
    
    resumePause = [CCMenuItemImage itemWithNormalImage:@"resume.png" selectedImage:@"resumeSel.png" target:self selector:@selector(resumeGame:)];
    
    mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
    
    restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
 
    
    pauseMenu = [CCMenu menuWithItems:resumePause, mainMenuPause, restartPause, nil];
    
    resumePause.position = ccp(0, 80);
    restartPause.position = ccp(0, 0);
    mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:pauseMenu z:10];
    
    
    
    [self addChild:pauseLayer z:8];
   
    
    
    
    game.isTouchEnabled = NO;
    
    
}



-(void) menuButtonTapped: (id)sender
{
    [self removeChild:pauseLayer cleanup:YES];

    [[CCDirector sharedDirector] resume];

    NSLog(@"level is %d", level);


    [[CCDirector sharedDirector] replaceScene: [[LevelSelectLayer alloc] init]];
}


-(void)resumeGame: (id)sender
{
    
    [self removeChild:pauseMenu cleanup:YES];
    
    [self removeChild:pauseLayer cleanup:YES];
    game.isTouchEnabled = YES;
    [[CCDirector sharedDirector] resume];
}

-(void)restartButtonTapped: (id)sender
{
    [self removeChild:pauseMenu cleanup:YES];
    
    
    game.isTouchEnabled = YES;
    [[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
   
}


//*************pause***************

//************************************IsGameOver?*****************************

//15,120  225,330
-(void)CheckGameOver
{
    if(level == 1)
    {
        if (i2x2 == 2 && i2x3 == 2 && i3x2 == 2 && i3x3 == 2)
        {
        
            [self GameOverLevelCompleted];
                        
            
            int lvl1score = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl1score"];
           
            int newlvl1score = operationCount;

            if (lvl1score == 0 || newlvl1score < lvl1score)
                
            {
            lvl1score = newlvl1score;
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl1score forKey:@"lvl1score"];

            }
        
            bool lvl1comp = true;
            
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl1comp forKey:@"lvl1comp"];
            //read from storage
            bool checklvl1stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl1comp"];

        }
    }
        
    
    if(level == 2)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0 && i4x2 == 0 && i4x3 == 0)
        {
            [self GameOverLevelCompleted];
            
            
            int lvl2score = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl2score"];
            
            int newlvl2score = operationCount;
            
            if (lvl2score == 0 || newlvl2score < lvl2score)
                
            {
                lvl2score = newlvl2score;
                
                [[NSUserDefaults standardUserDefaults] setInteger:lvl2score forKey:@"lvl2score"];
                
            }
            
            bool lvl2comp = true;
            
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl2comp forKey:@"lvl2comp"];
            //read from storage
            bool checklvl2stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl2comp"];
           
        }
    }
    if(level == 3)
    {
        if(i3x2 == 1 && i3x3 == 1 && i3x1 == 1 && i3x4 == 1 )
        {
            [self GameOverLevelCompleted];
        
        
        int lvl3score = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl3score"];
        
        int newlvl3score = operationCount;
        
        if (lvl3score == 0 || newlvl3score < lvl3score)
            
        {
            lvl3score = newlvl3score;
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl3score forKey:@"lvl3score"];
            
        }
        
        bool lvl3comp = true;
        
        // write to storage
        [[NSUserDefaults standardUserDefaults] setBool:lvl3comp forKey:@"lvl3comp"];
        //read from storage
        bool checklvl3stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl3comp"];
        }
    }
    if(level == 4)
    {
        if(i3x2 == 2 && i3x3 == 2 && i2x2 == 1 && i2x3 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl4comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl4comp forKey:@"lvl4comp"];
            //read from storage
            bool checklvl4stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl4comp"];
            int newlvl4score = operationCount;
            
            int lvl4score;
            if(newlvl4score > lvl4score)
            {
                lvl4score = newlvl4score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl4score forKey:@"lvl4score"];
                
            }

            
        }
    }
    if(level == 5)
    {
        if(i3x2 == 0 && i3x3 == 0 && i2x2 == 2 && i2x3 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl5comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl5comp forKey:@"lvl5comp"];
            //read from storage
            bool checklvl5stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl5comp"];
            
            int newlvl5score = operationCount;
            
            int lvl5score;
            if(newlvl5score > lvl5score)
            {
                lvl5score = newlvl5score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl5score forKey:@"lvl5score"];
                
            }
        }
    }
    if(level == 6)
    {
        if(i3x2 == 2 && i3x3 == 2 && i2x2 == 1 && i2x3 == 1 && i4x2 == 0 && i4x3 == 0)
        {
            [self GameOverLevelCompleted];
            bool lvl6comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl6comp forKey:@"lvl6comp"];
            //read from storage
            bool checklvl6stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl6comp"];
            
            int newlvl6score = operationCount;
            
            int lvl6score;
            if(newlvl6score > lvl6score)
            {
                lvl6score = newlvl6score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl6score forKey:@"lvl6score"];
                
            }
            
        }
    }
    if(level == 7)
    {
        if(i1x1 == 2 && i1x4 == 2 && i4x1 == 2 && i4x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl7comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl7comp forKey:@"lvl7comp"];
            //read from storage
            bool checklvl7stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl7comp"];
            
            int newlvl7score = operationCount;
            
            int lvl7score;
            if(newlvl7score > lvl7score)
            {
                lvl7score = newlvl7score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl7score forKey:@"lvl7score"];
                
            }
        }
    }

    if(level == 8)
    {
        if(i1x2 == 1 && i1x3 == 1 && i2x2 == 1 && i2x3 == 1 && i3x2 == 0 && i3x3 == 0 && i4x2 == 0 && i4x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl8comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl8comp forKey:@"lvl8comp"];
            //read from storage
            bool checklvl8stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl8comp"];
            
            int newlvl8score = operationCount;
            
            int lvl8score;
            if(newlvl8score > lvl8score)
            {
                lvl8score = newlvl8score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl8score forKey:@"lvl8score"];
                
            }
        }
    }
    if(level == 9)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 2 && i3x3 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl9comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl9comp forKey:@"lvl9comp"];
            //read from storage
            bool checklvl9stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl9comp"];
            
            int newlvl9score = operationCount;
            
            int lvl9score;
            if(newlvl9score > lvl9score)
            {
                lvl9score = newlvl9score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl9score forKey:@"lvl9score"];
                
            }
        }
    }
    if(level == 10)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0 && i4x2 == 0 && i4x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl10comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl10comp forKey:@"lvl10comp"];
            //read from storage
            bool checklvl10stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl10comp"];
            
            int newlvl10score = operationCount;
            
            int lvl10score;
            if(newlvl10score > lvl10score)
            {
                lvl10score = newlvl10score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl10score forKey:@"lvl10score"];
                
            }
        }
    }
    if(level == 11)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0)
        {
            [self GameOverLevelCompleted];
            bool lvl11comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl11comp forKey:@"lvl11comp"];
            //read from storage
            bool checklvl11stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl11comp"];
            
            int newlvl11score = operationCount;
            
            int lvl11score;
            if(newlvl11score > lvl11score)
            {
                lvl11score = newlvl11score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl11score forKey:@"lvl11score"];
                
            }
        }
    }
    if(level == 12)
    {
        if(i2x1 == 1 && i3x1 == 1 && i2x2 == 1 && i2x3 == 1 && i3x2 == 1 && i3x3 == 1 && i2x4 == 1 && i3x4 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl12comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl12comp forKey:@"lvl12comp"];
            //read from storage
            bool checklvl12stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl12comp"];
            
            int newlvl12score = operationCount;
            
            int lvl12score;
            if(newlvl12score > lvl12score)
            {
                lvl12score = newlvl12score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl12score forKey:@"lvl12score"];
                
            }
        }
    }
    if(level == 13)
    {
        if(i3x2 == 0 && i3x3 ==0 && i2x2 == 2 && i2x3 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl13comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl13comp forKey:@"lvl13comp"];
            //read from storage
            bool checklvl13stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl13comp"];
            
            int newlvl13score = operationCount;
            
            int lvl13score;
            if(newlvl13score > lvl13score)
            {
                lvl13score = newlvl13score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl13score forKey:@"lvl13score"];
                
            }
        }
    }
    if(level == 14)
    {
        if(i1x2 == 1 && i1x3 == 1 && i2x1 == 0 && i3x1 == 0 && i4x2 == 1 && i4x3 == 1 && i2x4 == 2 && i3x4 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl14comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl14comp forKey:@"lvl14comp"];
            //read from storage
            bool checklvl14stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl14comp"];
            
            int newlvl14score = operationCount;
            
            int lvl14score;
            if(newlvl14score > lvl14score)
            {
                lvl14score = newlvl14score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl14score forKey:@"lvl14score"];
                
            }
        }
    }
    if(level == 15)
    {
        if(i4x1 == 2 && i4x2 == 2 && i4x3 == 2 && i4x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl15comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl15comp forKey:@"lvl15comp"];
            //read from storage
            bool checklvl15stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl15comp"];
            
            int newlvl15score = operationCount;
            
            int lvl15score;
            if(newlvl15score > lvl15score)
            {
                lvl15score = newlvl15score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl15score forKey:@"lvl15score"];
                
            }
        }
    }
    if(level == 16)
    {
        if(i1x2 == 2 && i1x3 == 2 && i1x4 == 2 && i1x1 == 2 && i2x1 == 2 && i2x4 == 2 && i3x1 == 2 && i3x4 == 2 && i4x1 == 2 && i4x2 == 2 && i4x3 == 2 && i4x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl16comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl16comp forKey:@"lvl16comp"];
            //read from storage
            bool checklvl16stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl16comp"];
            
            int newlvl16score = operationCount;
            
            int lvl16score;
            if(newlvl16score > lvl16score)
            {
                lvl16score = newlvl16score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl16score forKey:@"lvl16score"];
                
            }
        }
    }
    if(level == 17)
    {
        if(i2x1 == 0 && i3x1 == 0 && i3x4 == 2 && i2x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl17comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl17comp forKey:@"lvl17comp"];
            //read from storage
            bool checklvl17stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl17comp"];
            
            int newlvl17score = operationCount;
            
            int lvl17score;
            if(newlvl17score > lvl17score)
            {
                lvl17score = newlvl17score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl17score forKey:@"lvl17score"];
                
            }
        }
    }
    if(level == 18)
    {
        if(i4x1 == 1 && i4x2 == 0 && i4x3 == 2 && i4x4 == 1)
        {
            [self GameOverLevelCompleted];
            bool lvl18comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl18comp forKey:@"lvl18comp"];
            //read from storage
            bool checklvl18stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl18comp"];
            
            int newlvl18score = operationCount;
            
            int lvl18score;
            if(newlvl18score > lvl18score)
            {
                lvl18score = newlvl18score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl18score forKey:@"lvl18score"];
                
            }
        }
    }
    if(level == 19)
    {
        if(i1x1 == 2 && i2x2 == 2 && i3x3 == 2 && i4x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl19comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl19comp forKey:@"lvl19comp"];
            //read from storage
            bool checklvl19stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl19comp"];
            
            int newlvl19score = operationCount;
            
            int lvl19score;
            if(newlvl19score > lvl19score)
            {
                lvl19score = newlvl19score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl19score forKey:@"lvl19score"];
                
            }
        }
    }
    if(level == 20)
    {
        if(i1x1 == 1 && i1x4 == 1 && i2x2 == 1 && i2x3 == 1 && i3x2 == 1 && i3x3 == 1 && i4x1 == 1 && i4x4 ==1 )
        {
            [self GameOverLevelCompleted];
            bool lvl20comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl20comp forKey:@"lvl20comp"];
            //read from storage
            bool checklvl20stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl20comp"];
            
            int newlvl20score = operationCount;
            
            int lvl20score;
            if(newlvl20score > lvl20score)
            {
                lvl20score = newlvl20score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl20score forKey:@"lvl20score"];
                
            }
        }
    }
    if(level == 201)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 3 && i3x3 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl201comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl201comp forKey:@"lvl201comp"];
            //read from storage
            bool checklvl201stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl201comp"];
            int newlvl201score = operationCount;
            
            int lvl201score;
            if(newlvl201score > lvl201score)
            {
                lvl201score = newlvl201score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl201score forKey:@"lvl201score"];
                
            }
            
            
        }    }
    if(level == 202)
    {
        if(i2x2 == 1 && i2x3 == 2 && i3x2 == 0 && i3x3 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl202comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl202comp forKey:@"lvl202comp"];
            //read from storage
            bool checklvl202stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl202comp"];
            int newlvl202score = operationCount;
            
            int lvl202score;
            if(newlvl202score > lvl202score)
            {
                lvl202score = newlvl202score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl202score forKey:@"lvl202score"];
                
            }
            
            
        }    }
    if(level == 203)
    {
        if(i2x2 == 3 && i2x3 == 3 && i3x2 == 3 && i3x3 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl203comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl203comp forKey:@"lvl203comp"];
            //read from storage
            bool checklvl203stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl203comp"];
            int newlvl203score = operationCount;
            
            int lvl203score;
            if(newlvl203score > lvl203score)
            {
                lvl203score = newlvl203score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl203score forKey:@"lvl203score"];
                
            }
            
            
        }
    }

    if(level == 204)
    {
        if(i2x1 == 1 && i2x2 == 1 && i2x3 == 2 && i2x4 == 2 && i3x1 == 0 && i3x2 == 0 && i3x3 == 3 && i3x4 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl204comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl204comp forKey:@"lvl204comp"];
            //read from storage
            bool checklvl204stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl204comp"];
            int newlvl204score = operationCount;
            
            int lvl204score;
            if(newlvl204score > lvl204score)
            {
                lvl204score = newlvl204score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl204score forKey:@"lvl204score"];
                
            }
            
            
        }    }

    if(level == 205)
    {
        if(i2x2 == 3 && i2x3 == 1 && i3x2 == 3 && i3x3 == 1)
        {
            [self GameOverLevelCompleted];
            bool lvl205comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl205comp forKey:@"lvl205comp"];
            //read from storage
            bool checklvl205stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl205comp"];
            int newlvl205score = operationCount;
            
            int lvl205score;
            if(newlvl205score > lvl205score)
            {
                lvl205score = newlvl205score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl205score forKey:@"lvl205score"];
                
            }
            
            
        }    }

    if(level == 206)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 2 && i3x3 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl206comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl206comp forKey:@"lvl206comp"];
            //read from storage
            bool checklvl206stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl206comp"];
            int newlvl206score = operationCount;
            
            int lvl206score;
            if(newlvl206score > lvl206score)
            {
                lvl206score = newlvl206score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl206score forKey:@"lvl206score"];
                
            }
            
            
        }
    }

    if(level == 207)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0)
        {
            [self GameOverLevelCompleted];
            bool lvl207comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl207comp forKey:@"lvl207comp"];
            //read from storage
            bool checklvl207stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl207comp"];
            int newlvl207score = operationCount;
            
            int lvl207score;
            if(newlvl207score > lvl207score)
            {
                lvl207score = newlvl207score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl207score forKey:@"lvl207score"];
                
            }
            
            
        }
    }

    if(level == 208)
    {
        if(i3x1 == 3 && i3x3 == 3 && i3x2 == 3 && i3x4 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl208comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl208comp forKey:@"lvl208comp"];
            //read from storage
            bool checklvl208stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl208comp"];
            int newlvl208score = operationCount;
            
            int lvl208score;
            if(newlvl208score > lvl208score)
            {
                lvl208score = newlvl208score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl208score forKey:@"lvl208score"];
                
            }
            
            
        }    }

    if(level == 209)
    {
        if(i1x1 == 3 && i2x2 == 3 && i3x3 == 3 && i4x4 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl209comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl209comp forKey:@"lvl209comp"];
            //read from storage
            bool checklvl209stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl209comp"];
            int newlvl209score = operationCount;
            
            int lvl209score;
            if(newlvl209score > lvl209score)
            {
                lvl209score = newlvl209score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl209score forKey:@"lvl209score"];
                
            }
            
            
        }
    }

if(level == 210)
{
    if(i1x2 == 1 && i1x3 == 1 && i2x1 == 0 && i3x1 == 0 && i4x2 == 3 && i4x3 == 3 && i2x4 == 2 && i3x4 == 2)
    {
        [self GameOverLevelCompleted];
        bool lvl210comp = true;
        // write to storage
        [[NSUserDefaults standardUserDefaults] setBool:lvl210comp forKey:@"lvl210comp"];
        //read from storage
        bool checklvl210stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl210comp"];
        int newlvl210score = operationCount;
        
        int lvl210score;
        if(newlvl210score > lvl210score)
        {
            lvl210score = newlvl210score;
            [[NSUserDefaults standardUserDefaults] setInteger:lvl210score forKey:@"lvl210score"];
            
        }
        
        
    }}

if(level == 211)
{
    if(i1x2 == 1 && i1x3 == 1 && i3x2 == 1 && i3x3 == 1 && i2x3 == 3 && i2x2 == 3 && i4x2 == 3 && i4x3 == 3)
    {
        [self GameOverLevelCompleted];
        bool lvl211comp = true;
        // write to storage
        [[NSUserDefaults standardUserDefaults] setBool:lvl211comp forKey:@"lvl211comp"];
        //read from storage
        bool checklvl211stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl211comp"];
        int newlvl211score = operationCount;
        
        int lvl211score;
        if(newlvl211score > lvl211score)
        {
            lvl211score = newlvl211score;
            [[NSUserDefaults standardUserDefaults] setInteger:lvl211score forKey:@"lvl211score"];
            
        }
        
        
    }
}
    
    if(level == 212)
    {
        if(i1x1 == 0 && i1x4 == 0 && i4x1 == 0 && i4x4 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl212comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl212comp forKey:@"lvl212comp"];
            //read from storage
            bool checklvl212stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl212comp"];
            int newlvl212score = operationCount;
            
            int lvl212score;
            if(newlvl212score > lvl212score)
            {
                lvl212score = newlvl212score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl212score forKey:@"lvl212score"];
                
            }
            
            
        }    }
    
    if(level == 213)
    {
        if(i3x1 == 2 && i3x2 == 0 && i3x3 == 0 && i3x4 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl213comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl213comp forKey:@"lvl213comp"];
            //read from storage
            bool checklvl213stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl213comp"];
            int newlvl213score = operationCount;
            
            int lvl213score;
            if(newlvl213score > lvl213score)
            {
                lvl213score = newlvl213score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl213score forKey:@"lvl213score"];
                
            }
            
            
        }
    }
    
    if(level == 214)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 0 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl214comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl214comp forKey:@"lvl214comp"];
            //read from storage
            bool checklvl214stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl214comp"];
            int newlvl214score = operationCount;
            
            int lvl214score;
            if(newlvl214score > lvl214score)
            {
                lvl214score = newlvl214score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl214score forKey:@"lvl214score"];
                
            }
            
            
        }    }
    
    if(level == 215)
    {
        if(i2x2 == 2 && i2x3 == 1 && i3x2 == 3 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl215comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl215comp forKey:@"lvl215comp"];
            //read from storage
            bool checklvl215stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl215comp"];
            int newlvl215score = operationCount;
            
            int lvl215score;
            if(newlvl215score > lvl215score)
            {
                lvl215score = newlvl215score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl215score forKey:@"lvl215score"];
                
            }
            
            
        }
    }
    
    if(level == 216)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl216comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl216comp forKey:@"lvl216comp"];
            //read from storage
            bool checklvl216stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl216comp"];
            int newlvl216score = operationCount;
            
            int lvl216score;
            if(newlvl216score > lvl216score)
            {
                lvl216score = newlvl216score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl216score forKey:@"lvl216score"];
                
            }
            
            
        }
    }
    
    if(level == 217)
    {
        if(i2x2 == 1 && i2x3 == 1 && i3x2 == 1 && i3x3 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl217comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl217comp forKey:@"lvl217comp"];
            //read from storage
            bool checklvl217stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl217comp"];
            int newlvl217score = operationCount;
            
            int lvl217score;
            if(newlvl217score > lvl217score)
            {
                lvl217score = newlvl217score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl217score forKey:@"lvl217score"];
                
            }
            
            
        }
    }
    
    if(level == 218)
    {
        if(i1x4 == 1 && i2x3 == 0 && i3x2 == 2 && i4x1 == 3 )
        {
            [self GameOverLevelCompleted];
            bool lvl218comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl218comp forKey:@"lvl218comp"];
            //read from storage
            bool checklvl218stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl218comp"];
            int newlvl218score = operationCount;
            
            int lvl218score;
            if(newlvl218score > lvl218score)
            {
                lvl218score = newlvl218score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl218score forKey:@"lvl218score"];
                
            }
            
            
        }
    }
    
    if(level == 219)
    {
        if(i1x4 == 1 && i2x3 == 1 && i3x2 == 1 && i4x1 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl219comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl219comp forKey:@"lvl219comp"];
            //read from storage
            bool checklvl219stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl219comp"];
            int newlvl219score = operationCount;
            
            int lvl219score;
            if(newlvl219score > lvl219score)
            {
                lvl219score = newlvl219score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl219score forKey:@"lvl219score"];
                
            }
            
            
        }    }
    
    if(level == 220)
    {
        if(i1x1 == 3 && i1x4 == 3 && i2x2 == 3 && i2x3 == 3 && i3x2 == 3 && i3x3 == 3 && i4x1 == 3 && i4x4 == 3)
        {
            [self GameOverLevelCompleted];
            bool lvl220comp = true;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl220comp forKey:@"lvl220comp"];
            //read from storage
            bool checklvl220stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl220comp"];
            int newlvl220score = operationCount;
            
            int lvl220score;
            if(newlvl220score > lvl220score)
            {
                lvl220score = newlvl220score;
                [[NSUserDefaults standardUserDefaults] setInteger:lvl220score forKey:@"lvl220score"];
                
            }
            
            
        }
    }
    
    if(level == 301)
    {
        if(i2x2 == 4 && i2x3 == 4 && i3x2 == 4 && i3x3 == 4 )
        {
            [self GameOverLevelCompleted];
            bool lvl301comp = true;
            int lvl301score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl301comp forKey:@"lvl301comp"];
            //read from storage
            bool checklvl301stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl301comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl301score forKey:@"lvl301score"];
        }
    }
    
    if(level == 302)
    {
        if(i2x2 == 4 && i2x3 == 4 && i3x2 == 4 && i3x3 == 4 && i2x1 == 4 && i2x4 == 4 && i3x1 == 4 && i3x4 == 4)
        {
            [self GameOverLevelCompleted];
            bool lvl302comp = true;
            int lvl302score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl302comp forKey:@"lvl302comp"];
            //read from storage
            bool checklvl302stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl302comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl302score forKey:@"lvl302score"];
        }
    }
    
    if(level == 303)
    {
        if( i3x2 == 3 && i3x3 == 3 )
        {
            [self GameOverLevelCompleted];
            bool lvl303comp = true;
            int lvl303score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl303comp forKey:@"lvl303comp"];
            //read from storage
            bool checklvl303stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl303comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl303score forKey:@"lvl303score"];
        }
    }
    
    if(level == 304)
    {
        if(i2x2 == 0 && i2x3 == 3 && i3x2 == 2 && i3x3 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl304comp = true;
            int lvl304score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl304comp forKey:@"lvl304comp"];
            //read from storage
            bool checklvl304stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl304comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl304score forKey:@"lvl304score"];
        }
    }
    
    if(level == 305)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 2 && i3x3 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl305comp = true;
            int lvl305score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl305comp forKey:@"lvl305comp"];
            //read from storage
            bool checklvl305stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl305comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl305score forKey:@"lvl305score"];
        }
    }
    
    if(level == 306)
    {
        if(i2x2 == 4 && i2x3 == 0 && i3x2 == 4 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl306comp = true;
            int lvl306score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl306comp forKey:@"lvl306comp"];
            //read from storage
            bool checklvl306stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl306comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl306score forKey:@"lvl306score"];
        }
    }
    
    if(level == 307)
    {
        if(i3x3 == 4 && i3x4 == 4 && i4x3 == 4 && i4x4 == 4 )
        {
            [self GameOverLevelCompleted];
            bool lvl307comp = true;
            int lvl307score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl307comp forKey:@"lvl307comp"];
            //read from storage
            bool checklvl307stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl307comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl307score forKey:@"lvl307score"];
        }
    }
    
    if(level == 308)
    {
        if(i2x2 == 0 && i2x3 == 0 && i3x2 == 0 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl308comp = true;
            int lvl308score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl308comp forKey:@"lvl308comp"];
            //read from storage
            bool checklvl308stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl308comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl308score forKey:@"lvl308score"];
        }
    }
    
    if(level == 309)
    {
        if(i4x3 == 4 && i4x4 == 1 )
        {
            [self GameOverLevelCompleted];
            bool lvl309comp = true;
            int lvl309score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl309comp forKey:@"lvl309comp"];
            //read from storage
            bool checklvl309stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl309comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl309score forKey:@"lvl309score"];
        }
    }
    
    if(level == 310)
    {
        if(i1x1 == 0 && i2x2 == 0 && i3x3 == 4 && i4x4 == 4 )
        {
            [self GameOverLevelCompleted];
            bool lvl310comp = true;
            int lvl310score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl310comp forKey:@"lvl310comp"];
            //read from storage
            bool checklvl310stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl310comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl310score forKey:@"lvl310score"];
        }
    }
    if(level == 311)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 2 && i3x3 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl311comp = true;
            int lvl311score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl311comp forKey:@"lvl311comp"];
            //read from storage
            bool checklvl311stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl311comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl311score forKey:@"lvl311score"];
        }
    }
    if(level == 312)
    {
        if(i1x2 == 4 && i1x3 == 2 && i2x2 == 2 && i2x3 == 4 && i3x2 == 4 && i3x3 == 2 && i4x2 == 2 && i4x3 == 4)
        {
            [self GameOverLevelCompleted];
            bool lvl312comp = true;
            int lvl312score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl312comp forKey:@"lvl312comp"];
            //read from storage
            bool checklvl312stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl312comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl312score forKey:@"lvl312score"];
        }
    }
    if(level == 313)
    {
        if(i1x1 == 4 && i1x4 == 4 && i4x1 == 4 && i4x4 == 4 )
        {
            [self GameOverLevelCompleted];
            bool lvl313comp = true;
            int lvl313score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl313comp forKey:@"lvl313comp"];
            //read from storage
            bool checklvl313stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl313comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl313score forKey:@"lvl313score"];
        }
    }
    if(level == 314)
    {
        if(i4x1 == 2 && i4x2 == 2 && i4x3 == 2 && i4x4 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl314comp = true;
            int lvl314score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl314comp forKey:@"lvl314comp"];
            //read from storage
            bool checklvl314stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl314comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl314score forKey:@"lvl314score"];
        }
    }
    if(level == 315)
    {
        if(i4x1 == 2 && i4x2 == 0 && i4x3 == 0 && i4x4 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl315comp = true;
            int lvl315score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl315comp forKey:@"lvl315comp"];
            //read from storage
            bool checklvl315stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl315comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl315score forKey:@"lvl315score"];
        }
    }
    if(level == 316)
    {
        if(i3x1 == 1 && i3x2 == 0 && i3x3 == 4 && i3x4 == 2 )
        {
            [self GameOverLevelCompleted];
            bool lvl316comp = true;
            int lvl316score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl316comp forKey:@"lvl316comp"];
            //read from storage
            bool checklvl316stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl316comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl316score forKey:@"lvl316score"];
        }
    }
    if(level == 317)
    {
        if(i2x2 == 2 && i2x3 == 2 && i3x2 == 4 && i3x3 == 4 )
        {
            [self GameOverLevelCompleted];
            bool lvl317comp = true;
            int lvl317score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl317comp forKey:@"lvl317comp"];
            //read from storage
            bool checklvl317stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl317comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl317score forKey:@"lvl317score"];
        }
    }
    if(level == 318)
    {
        if(i2x2 == 2 && i2x3 == 1 && i3x2 == 4 && i3x3 == 0 )
        {
            [self GameOverLevelCompleted];
            bool lvl318comp = true;
            int lvl318score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl318comp forKey:@"lvl318comp"];
            //read from storage
            bool checklvl318stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl318comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl318score forKey:@"lvl318score"];
        }
    }
    if(level == 319)
    {
        if(i1x1 == 0 && i1x4 == 2 && i2x2 == 0 && i2x3 == 2 && i3x2 == 2 && i3x3 == 30 && i4x1 == 2 && i4x4 == 0)
        {
            [self GameOverLevelCompleted];
            bool lvl319comp = true;
            int lvl319score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl319comp forKey:@"lvl319comp"];
            //read from storage
            bool checklvl319stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl319comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl319score forKey:@"lvl319score"];
        }
    }
    if(level == 320)
    {
        if(i1x1 == 2 && i1x4 == 2 && i2x1 == 2 && i2x2 == 2 && i2x3 == 2 && i2x4 == 2 && i3x1 == 2 && i3x4 == 2 && i4x2 == 2 && i4x3 == 2)
        {
            [self GameOverLevelCompleted];
            bool lvl320comp = true;
            int lvl320score = operationCount;
            // write to storage
            [[NSUserDefaults standardUserDefaults] setBool:lvl320comp forKey:@"lvl320comp"];
            //read from storage
            bool checklvl320stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl320comp"];
            
            [[NSUserDefaults standardUserDefaults] setInteger:lvl320score forKey:@"lvl320score"];
        }
    }
    
    
    



}



-(void) GameOverLevelCompleted
{
    [[CCDirector sharedDirector] pause];
    
     gameOverLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 0) width: 240 height: 320];
    
    gameOverLayer.position = ccp(15, 120);
    
    border = [CCSprite spriteWithFile:@"border.png" ];
    border.position = ccp(160,240);
    

    
    [self addChild:border z:8];
    
    [self addChild: gameOverLayer z:8];
    

    
if(perfectCount == operationCount)
{
    gameOver = [CCLabelTTF labelWithString:@"PERFECT!" fontName:@"Arial" fontSize:20];
    gameOver.position = ccp(160, 330);
    [self addChild:gameOver z:9];
    
    
    gameOver = [CCLabelTTF labelWithString:@"You owned this level!" fontName:@"Arial" fontSize:20];
    gameOver.position = ccp(160, 300);
    [self addChild:gameOver z:9];
}
else
{
        gameOver = [CCLabelTTF labelWithString:@"NICE JOB!" fontName:@"Arial" fontSize:20];
        gameOver.position = ccp(160, 330);
        [self addChild:gameOver z:9];
    
    
    gameOver = [CCLabelTTF labelWithString:@"You passed the level!" dimensions:CGSizeMake(200,100) alignment:UITextAlignmentCenter
        fontName:@"Arial" fontSize:20];
        gameOver.position = ccp(160, 260);
        [self addChild:gameOver z:9];
    
}
    
    
    
    
    mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
    
    restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
    
    
    GameOverMenu = [CCMenu menuWithItems: mainMenuPause,restartPause,  nil];
    
    mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:GameOverMenu z:9];
    
    game.isTouchEnabled = NO;
    lvlButts.isTouchEnabled = NO;
    
}

//200 , 238

-(void) GameOverYouLose
{
    [[CCDirector sharedDirector] pause];
    
    
    //background
    
    
    border = [CCSprite spriteWithFile:@"border.png"];
    border.position = ccp(160,240);
    [self addChild:border z:8];
    
    
    
    
    //background
    
    
    gameOverLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 0) width: 200 height: 238];
    
    gameOverLayer.position = ccp(40, 95);
    
    
    [self addChild: gameOverLayer z:8];
    
    gameOver = [CCLabelTTF labelWithString:@"You Lose!" fontName:@"Arial" fontSize:20];
    gameOver.position = ccp(160, 300);
    [self addChild:gameOver z:9];
    

    gameOver = [CCLabelTTF labelWithString:@"GAME OVER" fontName:@"Arial" fontSize:30];
    gameOver.position = ccp(160, 330);
    [self addChild:gameOver z:9];
    

    gameOver.color=ccc3(200,0,0);
    
        mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
        
        restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
        
        
        GameOverMenu = [CCMenu menuWithItems: mainMenuPause, restartPause, nil];
        
        mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:GameOverMenu z:9];
    
    game.isTouchEnabled = NO;
    
    

}



//************************************IsGameOver?*****************************

/////////////////////////GameLayer 1///////////////////////////
-(void)int1x1ToggleTapped:(id)sender
{
    
    
    if((int1x1toggle.selectedItem == int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x1;
        NSLog(@"define selected number 1 as from i1x1 and %d", selectedNumber1);
        intselected1 = int1x1toggle;
     
        neari1x2 = true;
     
        neari2x1 = true;
       
        
        
    }
            
    
                
         else   if(neari1x1 == true)
            
                       
            {
            selectedNumber2 = i1x1;
            NSLog(@"define selectedNumber 2 as from i1x1 and %d", selectedNumber2);
            intselected2 = int1x1toggle;
            intselected2.visible = NO;
            [intselected1 setSelectedIndex:0];
            intselected1.selectedIndex = 0;
            [self doOperation];
            i1x1 = result;
            [self new1x1];
            [self deleteToggles];
            [self CheckGameOver];
                neari1x1 = false;
                neari1x2 = false;
                neari1x3 = false;
                neari1x4 = false;
                neari2x1 = false;
                neari2x2 = false;
                neari2x3 = false;
                neari2x4 = false;
                neari3x1 = false;
                neari3x2 = false;
                neari3x3 = false;
                neari3x4 = false;
                neari4x1 = false;
                neari4x2 = false;
                neari4x3 = false;
                neari4x4 = false;

            }
    else
    {
        int1x1toggle.selectedIndex = 0;

    }
    
           
        

}



-(void)int1x2ToggleTapped:(id)sender
{
    if((int1x2toggle.selectedItem == int1x2Sel && int1x1toggle.selectedItem != int1x1Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x2;
        NSLog(@"define selected number 1 as from i1x2 and %d", selectedNumber1);
        intselected1 = int1x2toggle;
        neari1x1 = true;
        neari1x3 = true;
        neari2x2 = true;
    }
    
    
    else    if (neari1x2 == true)
        {
            
            
            
            selectedNumber2 = i1x2;
            NSLog(@"define selectedNumber 2 as from i1x2 and %d", selectedNumber2);
            intselected2 = int1x2toggle;
            intselected2.visible = NO;
            [self doOperation];
            [intselected1 setSelectedIndex:0];
            intselected1.selectedIndex = 0;
            i1x2 = result;
            [self new1x2];
            [self deleteToggles];
            [self CheckGameOver];
            neari1x1 = false;
            neari1x2 = false;
            neari1x3 = false;
            neari1x4 = false;
            neari2x1 = false;
            neari2x2 = false;
            neari2x3 = false;
            neari2x4 = false;
            neari3x1 = false;
            neari3x2 = false;
            neari3x3 = false;
            neari3x4 = false;
            neari4x1 = false;
            neari4x2 = false;
            neari4x3 = false;
            neari4x4 = false;
            
        }
    
    else
    {
        int1x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int1x3ToggleTapped:(id)sender
{
    if((int1x3toggle.selectedItem == int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x3;
        NSLog(@"define selected number 1 as from i1x3 and %d", selectedNumber1);
        intselected1 = int1x3toggle;
        neari1x2 = true;
        neari1x4 = true;
        neari2x3 = true;
    }
    
    
    else    if (neari1x3 == true)
    {
        
        
        
        selectedNumber2 = i1x3;
        NSLog(@"define selectedNumber 2 as from i1x3 and %d", selectedNumber2);
        intselected2 = int1x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x3 = result;
        [self new1x3];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int1x3toggle.selectedIndex = 0;
        
    }
    
    
}

-(void)int1x4ToggleTapped:(id)sender
{
    
    
    if((int1x4toggle.selectedItem == int1x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x4;
        NSLog(@"define selected number 1 as from i1x4 and %d", selectedNumber1);
        intselected1 = int1x4toggle;
        neari1x3 = true;
        neari2x4 = true;
    }
    
    
    
    else if (neari1x4 == true)
    {
        
        
        
        selectedNumber2 = i1x4;
        NSLog(@"define selectedNumber 2 as from i1x4 and %d", selectedNumber2);
        intselected2 = int1x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x4 = result;
        [self new1x4];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int1x4toggle.selectedIndex = 0;
        
    }
}

-(void)int2x1ToggleTapped:(id)sender
{
    
    
    if((int2x1toggle.selectedItem == int2x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int1x1toggle.selectedItem != int1x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x1;
        NSLog(@"define selected number 1 as from i2x1 and %d", selectedNumber1);
        intselected1 = int2x1toggle;
        neari1x1 = true;
        neari2x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari2x1 == true)
    {
        
        
        
        selectedNumber2 = i2x1;
        NSLog(@"define selectedNumber 2 as from i2x1 and %d", selectedNumber2);
        intselected2 = int2x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x1 = result;
        [self new2x1];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int2x1toggle.selectedIndex = 0;
        
    }
    
}

-(void)int2x2ToggleTapped:(id)sender
{
    
    
    if((int2x2toggle.selectedItem == int2x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int1x1toggle.selectedItem != int1x1Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x2;
        NSLog(@"define selected number 1 as from i2x2 and %d", selectedNumber1);
        intselected1 = int2x2toggle;
        neari2x1 = true;
        neari2x3 = true;
        neari1x2 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari2x2 == true)
    {
        
        
        
        selectedNumber2 = i2x2;
        NSLog(@"define selectedNumber 2 as from i2x2 and %d", selectedNumber2);
        intselected2 = int2x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x2 = result;
        [self new2x2];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x2toggle.selectedIndex = 0;
        
    }
}

-(void)int2x3ToggleTapped:(id)sender
{
    
    
    if((int2x3toggle.selectedItem == int2x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int1x1toggle.selectedItem != int1x1Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x3;
        NSLog(@"define selected number 1 as from i2x3 and %d", selectedNumber1);
        intselected1 = int2x3toggle;
        neari2x2 = true;
        neari2x4 = true;
        neari1x3 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari2x3 == true)
    {
        
        
        
        selectedNumber2 = i2x3;
        NSLog(@"define selectedNumber 2 as from i2x3 and %d", selectedNumber2);
        intselected2 = int2x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x3 = result;
        [self new2x3];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x3toggle.selectedIndex = 0;
        
    }
}


-(void)int2x4ToggleTapped:(id)sender
{
    
    
    if((int2x4toggle.selectedItem == int2x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int1x1toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i2x4;
        NSLog(@"define selected number 1 as from i2x4 and %d", selectedNumber1);
        intselected1 = int2x4toggle;
        neari2x3 = true;
        neari1x4 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari2x4 == true)
    {
        
        
        
        selectedNumber2 = i2x4;
        NSLog(@"define selectedNumber 2 as from i2x4 and %d", selectedNumber2);
        intselected2 = int2x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x4 = result;
        [self new2x4];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x4toggle.selectedIndex = 0;
        
    }
}

-(void)int3x1ToggleTapped:(id)sender
{
    
    
    if((int3x1toggle.selectedItem == int3x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int1x1toggle.selectedItem != int1x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x1;
        NSLog(@"define selected number 1 as from i3x1 and %d", selectedNumber1);
        intselected1 = int3x1toggle;
        neari3x2 = true;
        neari2x1 = true;
        neari4x1 = true;
    }
    
    
    
    else if (neari3x1 == true)
    {
        
        
        
        selectedNumber2 = i3x1;
        NSLog(@"define selectedNumber 2 as from i3x1 and %d", selectedNumber2);
        intselected2 = int3x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x1 = result;
        [self new3x1];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x1toggle.selectedIndex = 0;
        
    }
    
}


-(void)int3x2ToggleTapped:(id)sender
{
    
    
    if((int3x2toggle.selectedItem == int3x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x2;
        NSLog(@"define selected number 1 as from i3x2 and %d", selectedNumber1);
        intselected1 = int3x2toggle;
        neari3x1 = true;
        neari3x3 = true;
        neari2x2 = true;
        neari4x2 = true;
    }
    
    
    
    else if (neari3x2 == true)
    {
        
        
        
        selectedNumber2 = i3x2;
        NSLog(@"define selectedNumber 2 as from i3x2 and %d", selectedNumber2);
        intselected2 = int3x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x2 = result;
        [self new3x2];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x2toggle.selectedIndex = 0;
        
    }
}


-(void)int3x3ToggleTapped:(id)sender
{
    
    
    if((int3x3toggle.selectedItem == int3x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x3;
        NSLog(@"define selected number 1 as from i3x3 and %d", selectedNumber1);
        intselected1 = int3x3toggle;
        neari3x2 = true;
        neari3x4 = true;
        neari2x3 = true;
        neari4x3 = true;
    }
    
    
    
    else if (neari3x3 == true)
    {
        
        
        
        selectedNumber2 = i3x3;
        NSLog(@"define selectedNumber 2 as from i3x3 and %d", selectedNumber2);
        intselected2 = int3x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x3 = result;
        [self new3x3];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x3toggle.selectedIndex = 0;
        
    }
}

-(void)int3x4ToggleTapped:(id)sender
{
    
    
    if((int3x4toggle.selectedItem == int3x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x4;
        NSLog(@"define selected number 1 as from i3x4 and %d", selectedNumber1);
        intselected1 = int3x4toggle;
        neari3x3 = true;
        neari4x4 = true;
        neari2x4 = true;
        
    }
    
    
    
    else if (neari3x4 == true)
    {
        
        
        
        selectedNumber2 = i3x4;
        NSLog(@"define selectedNumber 2 as from i3x4 and %d", selectedNumber2);
        intselected2 = int3x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x4 = result;
        [self new3x4];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x4toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x1ToggleTapped:(id)sender
{
    
    
    if((int4x1toggle.selectedItem == int4x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int1x1toggle.selectedItem != int1x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x1;
        NSLog(@"define selected number 1 as from i4x1 and %d", selectedNumber1);
        intselected1 = int4x1toggle;
        neari4x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari4x1 == true)
    {
        
        
        
        selectedNumber2 = i4x1;
        NSLog(@"define selectedNumber 2 as from i4x1 and %d", selectedNumber2);
        intselected2 = int4x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x1 = result;
        [self new4x1];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x1toggle.selectedIndex = 0;
        
    }
}


-(void)int4x2ToggleTapped:(id)sender
{
    
    
    if((int4x2toggle.selectedItem == int4x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int1x1toggle.selectedItem != int1x1Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x2;
        NSLog(@"define selected number 1 as from i4x2 and %d", selectedNumber1);
        intselected1 = int4x2toggle;
        neari4x1 = true;
        neari4x3 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari4x2 == true)
    {
        
        
        
        selectedNumber2 = i4x2;
        NSLog(@"define selectedNumber 2 as from i4x2 and %d", selectedNumber2);
        intselected2 = int4x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x2 = result;
        [self new4x2];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int4x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x3ToggleTapped:(id)sender
{
    
    
    if((int4x3toggle.selectedItem == int4x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int1x1toggle.selectedItem != int1x1Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x3;
        NSLog(@"define selected number 1 as from i4x3 and %d", selectedNumber1);
        intselected1 = int4x3toggle;
        neari4x2 = true;
        neari4x4 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari4x3 == true)
    {
        
        
        
        selectedNumber2 = i4x3;
        NSLog(@"define selectedNumber 2 as from i4x3 and %d", selectedNumber2);
        intselected2 = int4x3toggle;
        intselected2.visible = NO;
        
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x3 = result;
        [self new4x3];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x3toggle.selectedIndex = 0;
        
    }
}

-(void)int4x4ToggleTapped:(id)sender
{
    
    
    if((int4x4toggle.selectedItem == int4x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int1x1toggle.selectedItem != int1x1Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x4;
        NSLog(@"define selected number 1 as from i4x4 and %d", selectedNumber1);
        intselected1 = int4x4toggle;
        neari4x3 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari4x4 == true)
    {
        
        
        
        selectedNumber2 = i4x4;
        NSLog(@"define selectedNumber 2 as from i4x4 and %d", selectedNumber2);
        intselected2 = int4x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x4 = result;
        [self new4x4];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x4toggle.selectedIndex = 0;
        
    }
}

/////////////////////////GameLayer 1///////////////////////////


////////////////////GameLayer 2//////////////////////////

-(void)int1x1ToggleTapped2:(id)sender
{
    
    
    if((int1x1toggle.selectedItem == int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x1;
        NSLog(@"define selected number 1 as from i1x1 and %d", selectedNumber1);
        intselected1 = int1x1toggle;
        
        neari1x2 = true;
        
        neari2x1 = true;
        
        
        
    }
    
    
    
    else   if(neari1x1 == true)
        
        
    {
        selectedNumber2 = i1x1;
        NSLog(@"define selectedNumber 2 as from i1x1 and %d", selectedNumber2);
        intselected2 = int1x1toggle;
        intselected2.visible = NO;
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        [self doOperation2];
        i1x1 = result;
        [self new1x12];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int1x1toggle.selectedIndex = 0;
        
    }
    
    
    
    
}



-(void)int1x2ToggleTapped2:(id)sender
{
    if((int1x2toggle.selectedItem == int1x2Sel && int1x1toggle.selectedItem != int1x1Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x2;
        NSLog(@"define selected number 1 as from i1x2 and %d", selectedNumber1);
        intselected1 = int1x2toggle;
        neari1x1 = true;
        neari1x3 = true;
        neari2x2 = true;
    }
    
    
    else    if (neari1x2 == true)
    {
        
        
        
        selectedNumber2 = i1x2;
        NSLog(@"define selectedNumber 2 as from i1x2 and %d", selectedNumber2);
        intselected2 = int1x2toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x2 = result;
        [self new1x22];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int1x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int1x3ToggleTapped2:(id)sender
{
    if((int1x3toggle.selectedItem == int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x3;
        NSLog(@"define selected number 1 as from i1x3 and %d", selectedNumber1);
        intselected1 = int1x3toggle;
        neari1x2 = true;
        neari1x4 = true;
        neari2x3 = true;
    }
    
    
    else    if (neari1x3 == true)
    {
        
        
        
        selectedNumber2 = i1x3;
        NSLog(@"define selectedNumber 2 as from i1x3 and %d", selectedNumber2);
        intselected2 = int1x3toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x3 = result;
        [self new1x32];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int1x3toggle.selectedIndex = 0;
        
    }
    
    
}

-(void)int1x4ToggleTapped2:(id)sender
{
    
    
    if((int1x4toggle.selectedItem == int1x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x4;
        NSLog(@"define selected number 1 as from i1x4 and %d", selectedNumber1);
        intselected1 = int1x4toggle;
        neari1x3 = true;
        neari2x4 = true;
    }
    
    
    
    else if (neari1x4 == true)
    {
        
        
        
        selectedNumber2 = i1x4;
        NSLog(@"define selectedNumber 2 as from i1x4 and %d", selectedNumber2);
        intselected2 = int1x4toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x4 = result;
        [self new1x42];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int1x4toggle.selectedIndex = 0;
        
    }
}

-(void)int2x1ToggleTapped2:(id)sender
{
    
    
    if((int2x1toggle.selectedItem == int2x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int1x1toggle.selectedItem != int1x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x1;
        NSLog(@"define selected number 1 as from i2x1 and %d", selectedNumber1);
        intselected1 = int2x1toggle;
        neari1x1 = true;
        neari2x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari2x1 == true)
    {
        
        
        
        selectedNumber2 = i2x1;
        NSLog(@"define selectedNumber 2 as from i2x1 and %d", selectedNumber2);
        intselected2 = int2x1toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x1 = result;
        [self new2x12];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int2x1toggle.selectedIndex = 0;
        
    }
    
}

-(void)int2x2ToggleTapped2:(id)sender
{
    
    
    if((int2x2toggle.selectedItem == int2x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int1x1toggle.selectedItem != int1x1Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x2;
        NSLog(@"define selected number 1 as from i2x2 and %d", selectedNumber1);
        intselected1 = int2x2toggle;
        neari2x1 = true;
        neari2x3 = true;
        neari1x2 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari2x2 == true)
    {
        
        
        
        selectedNumber2 = i2x2;
        NSLog(@"define selectedNumber 2 as from i2x2 and %d", selectedNumber2);
        intselected2 = int2x2toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x2 = result;
        [self new2x22];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x2toggle.selectedIndex = 0;
        
    }
}

-(void)int2x3ToggleTapped2:(id)sender
{
    
    
    if((int2x3toggle.selectedItem == int2x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int1x1toggle.selectedItem != int1x1Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x3;
        NSLog(@"define selected number 1 as from i2x3 and %d", selectedNumber1);
        intselected1 = int2x3toggle;
        neari2x2 = true;
        neari2x4 = true;
        neari1x3 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari2x3 == true)
    {
        
        
        
        selectedNumber2 = i2x3;
        NSLog(@"define selectedNumber 2 as from i2x3 and %d", selectedNumber2);
        intselected2 = int2x3toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x3 = result;
        [self new2x32];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x3toggle.selectedIndex = 0;
        
    }
}


-(void)int2x4ToggleTapped2:(id)sender
{
    
    
    if((int2x4toggle.selectedItem == int2x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int1x1toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i2x4;
        NSLog(@"define selected number 1 as from i2x4 and %d", selectedNumber1);
        intselected1 = int2x4toggle;
        neari2x3 = true;
        neari1x4 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari2x4 == true)
    {
        
        
        
        selectedNumber2 = i2x4;
        NSLog(@"define selectedNumber 2 as from i2x4 and %d", selectedNumber2);
        intselected2 = int2x4toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x4 = result;
        [self new2x42];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x4toggle.selectedIndex = 0;
        
    }
}

-(void)int3x1ToggleTapped2:(id)sender
{
    
    
    if((int3x1toggle.selectedItem == int3x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int1x1toggle.selectedItem != int1x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x1;
        NSLog(@"define selected number 1 as from i3x1 and %d", selectedNumber1);
        intselected1 = int3x1toggle;
        neari3x2 = true;
        neari2x1 = true;
        neari4x1 = true;
    }
    
    
    
    else if (neari3x1 == true)
    {
        
        
        
        selectedNumber2 = i3x1;
        NSLog(@"define selectedNumber 2 as from i3x1 and %d", selectedNumber2);
        intselected2 = int3x1toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x1 = result;
        [self new3x12];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x1toggle.selectedIndex = 0;
        
    }
    
}


-(void)int3x2ToggleTapped2:(id)sender
{
    
    
    if((int3x2toggle.selectedItem == int3x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x2;
        NSLog(@"define selected number 1 as from i3x2 and %d", selectedNumber1);
        intselected1 = int3x2toggle;
        neari3x1 = true;
        neari3x3 = true;
        neari2x2 = true;
        neari4x2 = true;
    }
    
    
    
    else if (neari3x2 == true)
    {
        
        
        
        selectedNumber2 = i3x2;
        NSLog(@"define selectedNumber 2 as from i3x2 and %d", selectedNumber2);
        intselected2 = int3x2toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x2 = result;
        [self new3x22];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x2toggle.selectedIndex = 0;
        
    }
}


-(void)int3x3ToggleTapped2:(id)sender
{
    
    
    if((int3x3toggle.selectedItem == int3x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x3;
        NSLog(@"define selected number 1 as from i3x3 and %d", selectedNumber1);
        intselected1 = int3x3toggle;
        neari3x2 = true;
        neari3x4 = true;
        neari2x3 = true;
        neari4x3 = true;
    }
    
    
    
    else if (neari3x3 == true)
    {
        
        
        
        selectedNumber2 = i3x3;
        NSLog(@"define selectedNumber 2 as from i3x3 and %d", selectedNumber2);
        intselected2 = int3x3toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x3 = result;
        [self new3x32];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x3toggle.selectedIndex = 0;
        
    }
}

-(void)int3x4ToggleTapped2:(id)sender
{
    
    
    if((int3x4toggle.selectedItem == int3x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x4;
        NSLog(@"define selected number 1 as from i3x4 and %d", selectedNumber1);
        intselected1 = int3x4toggle;
        neari3x3 = true;
        neari4x4 = true;
        neari2x4 = true;
        
    }
    
    
    
    else if (neari3x4 == true)
    {
        
        
        
        selectedNumber2 = i3x4;
        NSLog(@"define selectedNumber 2 as from i3x4 and %d", selectedNumber2);
        intselected2 = int3x4toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x4 = result;
        [self new3x42];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x4toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x1ToggleTapped2:(id)sender
{
    
    
    if((int4x1toggle.selectedItem == int4x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int1x1toggle.selectedItem != int1x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x1;
        NSLog(@"define selected number 1 as from i4x1 and %d", selectedNumber1);
        intselected1 = int4x1toggle;
        neari4x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari4x1 == true)
    {
        
        
        
        selectedNumber2 = i4x1;
        NSLog(@"define selectedNumber 2 as from i4x1 and %d", selectedNumber2);
        intselected2 = int4x1toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x1 = result;
        [self new4x12];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x1toggle.selectedIndex = 0;
        
    }
}


-(void)int4x2ToggleTapped2:(id)sender
{
    
    
    if((int4x2toggle.selectedItem == int4x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int1x1toggle.selectedItem != int1x1Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x2;
        NSLog(@"define selected number 1 as from i4x2 and %d", selectedNumber1);
        intselected1 = int4x2toggle;
        neari4x1 = true;
        neari4x3 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari4x2 == true)
    {
        
        
        
        selectedNumber2 = i4x2;
        NSLog(@"define selectedNumber 2 as from i4x2 and %d", selectedNumber2);
        intselected2 = int4x2toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x2 = result;
        [self new4x22];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int4x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x3ToggleTapped2:(id)sender
{
    
    
    if((int4x3toggle.selectedItem == int4x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int1x1toggle.selectedItem != int1x1Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x3;
        NSLog(@"define selected number 1 as from i4x3 and %d", selectedNumber1);
        intselected1 = int4x3toggle;
        neari4x2 = true;
        neari4x4 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari4x3 == true)
    {
        
        
        
        selectedNumber2 = i4x3;
        NSLog(@"define selectedNumber 2 as from i4x3 and %d", selectedNumber2);
        intselected2 = int4x3toggle;
        intselected2.visible = NO;
        
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x3 = result;
        [self new4x32];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x3toggle.selectedIndex = 0;
        
    }
}

-(void)int4x4ToggleTapped2:(id)sender
{
    
    
    if((int4x4toggle.selectedItem == int4x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int1x1toggle.selectedItem != int1x1Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x4;
        NSLog(@"define selected number 1 as from i4x4 and %d", selectedNumber1);
        intselected1 = int4x4toggle;
        neari4x3 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari4x4 == true)
    {
        
        
        
        selectedNumber2 = i4x4;
        NSLog(@"define selectedNumber 2 as from i4x4 and %d", selectedNumber2);
        intselected2 = int4x4toggle;
        intselected2.visible = NO;
        [self doOperation2];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x4 = result;
        [self new4x42];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x4toggle.selectedIndex = 0;
        
    }
}

/////////////////////////GameLayer 2///////////////////////////



////////////////////GameLayer 3//////////////////////////

-(void)int1x1ToggleTapped3:(id)sender
{
    
    
    if((int1x1toggle.selectedItem == int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x1;
        NSLog(@"define selected number 1 as from i1x1 and %d", selectedNumber1);
        intselected1 = int1x1toggle;
        
        neari1x2 = true;
        
        neari2x1 = true;
        
        
        
    }
    
    
    
    else   if(neari1x1 == true)
        
        
    {
        selectedNumber2 = i1x1;
        NSLog(@"define selectedNumber 2 as from i1x1 and %d", selectedNumber2);
        intselected2 = int1x1toggle;
        intselected2.visible = NO;
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        [self doOperation3];
        i1x1 = result;
        [self new1x13];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int1x1toggle.selectedIndex = 0;
        
    }
    
    
    
    
}



-(void)int1x2ToggleTapped3:(id)sender
{
    if((int1x2toggle.selectedItem == int1x2Sel && int1x1toggle.selectedItem != int1x1Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x2;
        NSLog(@"define selected number 1 as from i1x2 and %d", selectedNumber1);
        intselected1 = int1x2toggle;
        neari1x1 = true;
        neari1x3 = true;
        neari2x2 = true;
    }
    
    
    else    if (neari1x2 == true)
    {
        
        
        
        selectedNumber2 = i1x2;
        NSLog(@"define selectedNumber 2 as from i1x2 and %d", selectedNumber2);
        intselected2 = int1x2toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x2 = result;
        [self new1x23];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int1x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int1x3ToggleTapped3:(id)sender
{
    if((int1x3toggle.selectedItem == int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x3;
        NSLog(@"define selected number 1 as from i1x3 and %d", selectedNumber1);
        intselected1 = int1x3toggle;
        neari1x2 = true;
        neari1x4 = true;
        neari2x3 = true;
    }
    
    
    else    if (neari1x3 == true)
    {
        
        
        
        selectedNumber2 = i1x3;
        NSLog(@"define selectedNumber 2 as from i1x3 and %d", selectedNumber2);
        intselected2 = int1x3toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x3 = result;
        [self new1x33];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int1x3toggle.selectedIndex = 0;
        
    }
    
    
}

-(void)int1x4ToggleTapped3:(id)sender
{
    
    
    if((int1x4toggle.selectedItem == int1x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x4;
        NSLog(@"define selected number 1 as from i1x4 and %d", selectedNumber1);
        intselected1 = int1x4toggle;
        neari1x3 = true;
        neari2x4 = true;
    }
    
    
    
    else if (neari1x4 == true)
    {
        
        
        
        selectedNumber2 = i1x4;
        NSLog(@"define selectedNumber 2 as from i1x4 and %d", selectedNumber2);
        intselected2 = int1x4toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x4 = result;
        [self new1x43];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int1x4toggle.selectedIndex = 0;
        
    }
}

-(void)int2x1ToggleTapped3:(id)sender
{
    
    
    if((int2x1toggle.selectedItem == int2x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int1x1toggle.selectedItem != int1x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x1;
        NSLog(@"define selected number 1 as from i2x1 and %d", selectedNumber1);
        intselected1 = int2x1toggle;
        neari1x1 = true;
        neari2x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari2x1 == true)
    {
        
        
        
        selectedNumber2 = i2x1;
        NSLog(@"define selectedNumber 2 as from i2x1 and %d", selectedNumber2);
        intselected2 = int2x1toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x1 = result;
        [self new2x12];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int2x1toggle.selectedIndex = 0;
        
    }
    
}

-(void)int2x2ToggleTapped3:(id)sender
{
    
    
    if((int2x2toggle.selectedItem == int2x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int1x1toggle.selectedItem != int1x1Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x2;
        NSLog(@"define selected number 1 as from i2x2 and %d", selectedNumber1);
        intselected1 = int2x2toggle;
        neari2x1 = true;
        neari2x3 = true;
        neari1x2 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari2x2 == true)
    {
        
        
        
        selectedNumber2 = i2x2;
        NSLog(@"define selectedNumber 2 as from i2x2 and %d", selectedNumber2);
        intselected2 = int2x2toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x2 = result;
        [self new2x23];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x2toggle.selectedIndex = 0;
        
    }
}

-(void)int2x3ToggleTapped3:(id)sender
{
    
    
    if((int2x3toggle.selectedItem == int2x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int1x1toggle.selectedItem != int1x1Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x3;
        NSLog(@"define selected number 1 as from i2x3 and %d", selectedNumber1);
        intselected1 = int2x3toggle;
        neari2x2 = true;
        neari2x4 = true;
        neari1x3 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari2x3 == true)
    {
        
        
        
        selectedNumber2 = i2x3;
        NSLog(@"define selectedNumber 2 as from i2x3 and %d", selectedNumber2);
        intselected2 = int2x3toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x3 = result;
        [self new2x33];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x3toggle.selectedIndex = 0;
        
    }
}


-(void)int2x4ToggleTapped3:(id)sender
{
    
    
    if((int2x4toggle.selectedItem == int2x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int1x1toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i2x4;
        NSLog(@"define selected number 1 as from i2x4 and %d", selectedNumber1);
        intselected1 = int2x4toggle;
        neari2x3 = true;
        neari1x4 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari2x4 == true)
    {
        
        
        
        selectedNumber2 = i2x4;
        NSLog(@"define selectedNumber 2 as from i2x4 and %d", selectedNumber2);
        intselected2 = int2x4toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x4 = result;
        [self new2x43];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int2x4toggle.selectedIndex = 0;
        
    }
}

-(void)int3x1ToggleTapped3:(id)sender
{
    
    
    if((int3x1toggle.selectedItem == int3x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int1x1toggle.selectedItem != int1x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x1;
        NSLog(@"define selected number 1 as from i3x1 and %d", selectedNumber1);
        intselected1 = int3x1toggle;
        neari3x2 = true;
        neari2x1 = true;
        neari4x1 = true;
    }
    
    
    
    else if (neari3x1 == true)
    {
        
        
        
        selectedNumber2 = i3x1;
        NSLog(@"define selectedNumber 2 as from i3x1 and %d", selectedNumber2);
        intselected2 = int3x1toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x1 = result;
        [self new3x13];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x1toggle.selectedIndex = 0;
        
    }
    
}


-(void)int3x2ToggleTapped3:(id)sender
{
    
    
    if((int3x2toggle.selectedItem == int3x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x2;
        NSLog(@"define selected number 1 as from i3x2 and %d", selectedNumber1);
        intselected1 = int3x2toggle;
        neari3x1 = true;
        neari3x3 = true;
        neari2x2 = true;
        neari4x2 = true;
    }
    
    
    
    else if (neari3x2 == true)
    {
        
        
        
        selectedNumber2 = i3x2;
        NSLog(@"define selectedNumber 2 as from i3x2 and %d", selectedNumber2);
        intselected2 = int3x2toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x2 = result;
        [self new3x23];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x2toggle.selectedIndex = 0;
        
    }
}


-(void)int3x3ToggleTapped3:(id)sender
{
    
    
    if((int3x3toggle.selectedItem == int3x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x3;
        NSLog(@"define selected number 1 as from i3x3 and %d", selectedNumber1);
        intselected1 = int3x3toggle;
        neari3x2 = true;
        neari3x4 = true;
        neari2x3 = true;
        neari4x3 = true;
    }
    
    
    
    else if (neari3x3 == true)
    {
        
        
        
        selectedNumber2 = i3x3;
        NSLog(@"define selectedNumber 2 as from i3x3 and %d", selectedNumber2);
        intselected2 = int3x3toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x3 = result;
        [self new3x33];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int3x3toggle.selectedIndex = 0;
        
    }
}

-(void)int3x4ToggleTapped3:(id)sender
{
    
    
    if((int3x4toggle.selectedItem == int3x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i3x4;
        NSLog(@"define selected number 1 as from i3x4 and %d", selectedNumber1);
        intselected1 = int3x4toggle;
        neari3x3 = true;
        neari4x4 = true;
        neari2x4 = true;
        
    }
    
    
    
    else if (neari3x4 == true)
    {
        
        
        
        selectedNumber2 = i3x4;
        NSLog(@"define selectedNumber 2 as from i3x4 and %d", selectedNumber2);
        intselected2 = int3x4toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x4 = result;
        [self new3x43];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int3x4toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x1ToggleTapped3:(id)sender
{
    
    
    if((int4x1toggle.selectedItem == int4x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int1x1toggle.selectedItem != int1x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x1;
        NSLog(@"define selected number 1 as from i4x1 and %d", selectedNumber1);
        intselected1 = int4x1toggle;
        neari4x2 = true;
        neari3x1 = true;
        
    }
    
    
    
    else if (neari4x1 == true)
    {
        
        
        
        selectedNumber2 = i4x1;
        NSLog(@"define selectedNumber 2 as from i4x1 and %d", selectedNumber2);
        intselected2 = int4x1toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x1 = result;
        [self new4x13];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x1toggle.selectedIndex = 0;
        
    }
}


-(void)int4x2ToggleTapped3:(id)sender
{
    
    
    if((int4x2toggle.selectedItem == int4x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int1x1toggle.selectedItem != int1x1Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x2;
        NSLog(@"define selected number 1 as from i4x2 and %d", selectedNumber1);
        intselected1 = int4x2toggle;
        neari4x1 = true;
        neari4x3 = true;
        neari3x2 = true;
    }
    
    
    
    else if (neari4x2 == true)
    {
        
        
        
        selectedNumber2 = i4x2;
        NSLog(@"define selectedNumber 2 as from i4x2 and %d", selectedNumber2);
        intselected2 = int4x2toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x2 = result;
        [self new4x23];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    else
    {
        int4x2toggle.selectedIndex = 0;
        
    }
    
}

-(void)int4x3ToggleTapped3:(id)sender
{
    
    
    if((int4x3toggle.selectedItem == int4x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int1x1toggle.selectedItem != int1x1Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x3;
        NSLog(@"define selected number 1 as from i4x3 and %d", selectedNumber1);
        intselected1 = int4x3toggle;
        neari4x2 = true;
        neari4x4 = true;
        neari3x3 = true;
    }
    
    
    
    else if (neari4x3 == true)
    {
        
        
        
        selectedNumber2 = i4x3;
        NSLog(@"define selectedNumber 2 as from i4x3 and %d", selectedNumber2);
        intselected2 = int4x3toggle;
        intselected2.visible = NO;
        
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x3 = result;
        [self new4x33];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x3toggle.selectedIndex = 0;
        
    }
}

-(void)int4x4ToggleTapped3:(id)sender
{
    
    
    if((int4x4toggle.selectedItem == int4x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int1x1toggle.selectedItem != int1x1Sel) || selectedNumber1 == 9999)
        
    {
        selectedNumber1 = i4x4;
        NSLog(@"define selected number 1 as from i4x4 and %d", selectedNumber1);
        intselected1 = int4x4toggle;
        neari4x3 = true;
        neari3x4 = true;
    }
    
    
    
    else if (neari4x4 == true)
    {
        
        
        
        selectedNumber2 = i4x4;
        NSLog(@"define selectedNumber 2 as from i4x4 and %d", selectedNumber2);
        intselected2 = int4x4toggle;
        intselected2.visible = NO;
        [self doOperation3];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x4 = result;
        [self new4x43];
        [self deleteToggles];
        [self CheckGameOver];
        neari1x1 = false;
        neari1x2 = false;
        neari1x3 = false;
        neari1x4 = false;
        neari2x1 = false;
        neari2x2 = false;
        neari2x3 = false;
        neari2x4 = false;
        neari3x1 = false;
        neari3x2 = false;
        neari3x3 = false;
        neari3x4 = false;
        neari4x1 = false;
        neari4x2 = false;
        neari4x3 = false;
        neari4x4 = false;
        
    }
    
    else
    {
        int4x4toggle.selectedIndex = 0;
        
    }
}
////////////////////GameLayer 3//////////////////////////


-(void) deleteToggles
{
    
    selectedNumber1 = 9999;
    selectedNumber2 = 9999;
    intselected1 = NULL;
    
    
}






//***************** color switching Operation *********************

//Operation
-(void) doOperation
{
    operationCount++;
    
    [OperationCount setString:[NSString stringWithFormat:@"mixes = %i", operationCount]];
    
  
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow

    if (selectedNumber1 == 0 && selectedNumber2 == 0)
    {
        result = 0;
    }
    else if (selectedNumber1 == 0 && selectedNumber2 == 1)
    {
        result = 2;
    }

    else if (selectedNumber1 == 0 && selectedNumber2 == 2)
    {
        result = 1;
    }
    
      
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 1 && selectedNumber2 == 0)
    {
        result = 2;
    }

    else if (selectedNumber1 == 1 && selectedNumber2 == 1)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 2)
    {
        result = 0;
    }
    
        
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 2 && selectedNumber2 == 0)
    {
        result = 1;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 1)
    {
        result = 0;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 2)
    {
        result = 2;
    }

       
 
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow

    NSLog(@"result is %i", result);
}

//Operation
-(void) doOperation2
{
    operationCount++;
    
    [OperationCount setString:[NSString stringWithFormat:@"mixes = %i", operationCount]];
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = light blue; 5 = yellow
    
    if (selectedNumber1 == 0 && selectedNumber2 == 0)
    {
        result = 0;
    }
    else if (selectedNumber1 == 0 && selectedNumber2 == 1)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 2)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 3)
    {
        result = 2;
    }
    
 
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 0)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 1)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 2)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 3)
    {
        result = 2;
    }
    
  
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 0)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 1)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 2)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 3)
    {
        result = 1;
    }
    
 
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 0)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 1)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 2)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 3)
    {
        result = 3;
    }
    
        
    NSLog(@"result is %i", result);
}

//Operation

-(void) doOperation3
{
    operationCount++;
    
    [OperationCount setString:[NSString stringWithFormat:@"mixes = %i", operationCount]];
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = light blue; 5 = yellow
    
    if (selectedNumber1 == 0 && selectedNumber2 == 0)
    {
        result = 0;
    }
    else if (selectedNumber1 == 0 && selectedNumber2 == 1)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 2)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 3)
    {
        result = 2;
    }
    else if (selectedNumber1 == 0 && selectedNumber2 == 4)
    {
        result = 3;
    }
    
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 0)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 1)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 2)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 3)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 4)
    {
        result = 2;
    }
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 0)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 1)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 2)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 3)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 2 && selectedNumber2 == 4)
    {
        result = 3;
    }
    
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 0)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 1)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 2)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 3)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 4)
    {
        result = 1;
    }
    
    
    
    //0 = green; 1 = red; 2 = blue; 3 = pink; 4 = blue; 5 = yellow

    
    else if (selectedNumber1 == 4 && selectedNumber2 == 0)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 1)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 2)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 3)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 4)
    {
        result = 4;
    }
    
    NSLog(@"result is %i", result);
}



//Operation



// Replace with New Image
-(void) new1x1
{
    NSLog(@"new1x1 called with %d", i1x1);
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(31.5,120);
    game = [CCMenu menuWithItems:int1x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    

}

-(void) new1x2
{
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(91,120);
    game = [CCMenu menuWithItems:int1x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x3
{
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(149,120);
    game = [CCMenu menuWithItems:int1x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x4
{ 
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(208.5,120);
    game = [CCMenu menuWithItems:int1x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x1
{
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(31.5,190);
    game = [CCMenu menuWithItems:int2x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new2x2
{
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(91,190);
    game = [CCMenu menuWithItems:int2x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x3
{
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(149,190);
    
    game = [CCMenu menuWithItems:int2x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x4{
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(208.5,190);
    
    game = [CCMenu menuWithItems:int2x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x1{
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(31.5,260);
    game = [CCMenu menuWithItems:int3x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x2{
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(91,260);
    game = [CCMenu menuWithItems:int3x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x3{
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(149,260);
    
    game = [CCMenu menuWithItems:int3x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x4{
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(208.5,260);
    
    game = [CCMenu menuWithItems:int3x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x1{
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(31.5,330);
    
    game = [CCMenu menuWithItems:int4x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x2{
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(91,330);
    game = [CCMenu menuWithItems:int4x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x3{
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(149,330);
    game = [CCMenu menuWithItems:int4x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x4{
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(208.5,330);
    
    game = [CCMenu menuWithItems:int4x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
//Replace with New Image


// Replace with New Image
-(void) new1x12
{
    NSLog(@"new1x1 called with %d", i1x1);
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped2:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(31.5,120);
    game = [CCMenu menuWithItems:int1x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
    
}

-(void) new1x22
{
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped2:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(91,120);
    game = [CCMenu menuWithItems:int1x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x32
{
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped2:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(149,120);
    game = [CCMenu menuWithItems:int1x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x42
{
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped2:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(208.5,120);
    game = [CCMenu menuWithItems:int1x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x12
{
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped2:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(31.5,190);
    game = [CCMenu menuWithItems:int2x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new2x22
{
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped2:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(91,190);
    game = [CCMenu menuWithItems:int2x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x32
{
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped2:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(149,190);
    
    game = [CCMenu menuWithItems:int2x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x42
{
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped2:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(208.5,190);
    
    game = [CCMenu menuWithItems:int2x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x12
{
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped2:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(31.5,260);
    game = [CCMenu menuWithItems:int3x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x22
{
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped2:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(91,260);
    game = [CCMenu menuWithItems:int3x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x32
{
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped2:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(149,260);
    
    game = [CCMenu menuWithItems:int3x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x42
{
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped2:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(208.5,260);
    
    game = [CCMenu menuWithItems:int3x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x12
{
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped2:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(31.5,330);
    
    game = [CCMenu menuWithItems:int4x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x22
{
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped2:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(91,330);
    game = [CCMenu menuWithItems:int4x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x32
{
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped2:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(149,330);
    game = [CCMenu menuWithItems:int4x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x42
{
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped2:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(208.5,330);
    
    game = [CCMenu menuWithItems:int4x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
//Replace with New Image



// Replace with New Image
-(void) new1x13
{
    NSLog(@"new1x1 called with %d", i1x1);
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped3:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(31.5,120);
    game = [CCMenu menuWithItems:int1x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
    
}

-(void) new1x23
{
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped3:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(91,120);
    game = [CCMenu menuWithItems:int1x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x33
{
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped3:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(149,120);
    game = [CCMenu menuWithItems:int1x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x43
{
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped3:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(208.5,120);
    game = [CCMenu menuWithItems:int1x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x13
{
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped3:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(31.5,190);
    game = [CCMenu menuWithItems:int2x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new2x23
{
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped3:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(91,190);
    game = [CCMenu menuWithItems:int2x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x33
{
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped3:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(149,190);
    
    game = [CCMenu menuWithItems:int2x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x43
{
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped3:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(208.5,190);
    
    game = [CCMenu menuWithItems:int2x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x13
{
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped3:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(31.5,260);
    game = [CCMenu menuWithItems:int3x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x23
{
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped3:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(91,260);
    game = [CCMenu menuWithItems:int3x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x33
{
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped3:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(149,260);
    
    game = [CCMenu menuWithItems:int3x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x43
{
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped3:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(208.5,260);
    
    game = [CCMenu menuWithItems:int3x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x13
{
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped3:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(31.5,330);
    
    game = [CCMenu menuWithItems:int4x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x23
{
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped3:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(91,330);
    game = [CCMenu menuWithItems:int4x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x33
{
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped3:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(149,330);
    game = [CCMenu menuWithItems:int4x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x43
{
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped3:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(208.5,330);
    
    game = [CCMenu menuWithItems:int4x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
//Replace with New Image


//***************** color switching Operation *********************


-(void) update:(ccTime)delta


{
    
    if(operationCount < perfectCount)
    {
        perfectCountLabel.color=ccc3(0,255,0);
    }
    else if(perfectCount <= operationCount)
    {
        perfectCountLabel.color=ccc3(255,0,0);
    }
    
    
}

@end
