//
//  GameLayer.h
//  Tricolors
//
//  Created by Aakash on 6/24/13.
//
//

#import <Foundation/Foundation.h>
#import "kobold2d.h"

@interface GameLayer : CCLayerColor 
{
    
    CCLabelTTF *levelTitle;
    NSString *levelTitleString;

    bool timeTrial;
    bool gameIsOver;
    CCMenu *lvlButts;
    
    CCMenu *back;

    CCMenuItem *question;
    CCMenu *questionMenu;
    
    CCMenuItem *backButton;

    CCMenuItemImage *colorCombo;
    
    
    CCMenuItemImage *Background;
    CCMenuItemImage *border;
    CCSprite *rectangle;
    
    int level;
    int selectedlevel;
    
    //timer
    int timerSeconds;
    int timerBonusSeconds;
    CCLabelTTF *timerLabel;
    NSString *timerSecondsString;
    //timer
    
    
    //pause
    
    CCMenu *firstMenu;
    
    CCMenuItem *pauseButton;
    
    CCMenu *pauseMenu;
    CCMenuItemImage *mainMenuPause;
    CCMenuItemImage *resumePause;
    CCMenuItemImage *restartPause;
    CCMenuItemImage * next;
    CCLayerColor *pauseLayer;
    
    
    //pause
    CCLayerColor *questionLayer;
    
    //gameover
    
    CCMenu *GameOverMenu;

    CCLayerColor *gameOverLayer;
    
    CCLabelTTF * gameOver;
    
    bool levelCompleted;
    //gameover
    
    
    CCMenu *game;
    
    
    int randomImageValue ;
    
    //button selected
    
    CCMenuItemToggle *intselected1;
    CCMenuItemToggle *intselected2;
    
    int selectedNumber1;
    int selectedNumber2;
    //button selected
    
    //perfect count
    int perfectCount;
    CCLabelTTF *perfectCountLabel;
    NSString *perfectCountString;
    
    
    
    //operations
    NSNumber *theOperation;
    int operationCount;
    int result;
    CCLabelTTF *OperationCount;
    NSString *operationCountString;
    //operations
    
    //bools
    
    bool neari1x1;
    bool neari1x2;
    bool neari1x3;
    bool neari1x4;
    bool neari2x1;
    bool neari2x2;
    bool neari2x3;
    bool neari2x4;
    bool neari3x1;
    bool neari3x2;
    bool neari3x3;
    bool neari3x4;
    bool neari4x1;
    bool neari4x2;
    bool neari4x3;
    bool neari4x4;
    
    
    
    
    //generate random colors
    int i1x1;
    
    
    CCMenuItem *int1x1;
    CCMenuItem *int1x1Sel;
    CCMenuItemToggle *int1x1toggle;
    
    
    
    int i1x2;
    
    
    CCMenuItem *int1x2;
    CCMenuItem *int1x2Sel;
    CCMenuItemToggle *int1x2toggle;
    
    
    int i1x3;
    
    
    CCMenuItem *int1x3;
    CCMenuItem *int1x3Sel;
    CCMenuItemToggle *int1x3toggle;
    
    
    int i1x4;
    
    CCMenuItem *int1x4;
    CCMenuItem *int1x4Sel;
    CCMenuItemToggle *int1x4toggle;
    
    int i2x1;
    
    CCMenuItem *int2x1;
    CCMenuItem *int2x1Sel;
    CCMenuItemToggle *int2x1toggle;
    
    
    int i2x2;
    
    
    CCMenuItem *int2x2;
    CCMenuItem *int2x2Sel;
    CCMenuItemToggle *int2x2toggle;

    int i2x3;
    
    CCMenuItem *int2x3;
    CCMenuItem *int2x3Sel;
    CCMenuItemToggle *int2x3toggle;
    
    
    int i2x4;
    
    
    
    CCMenuItem *int2x4;
    CCMenuItem *int2x4Sel;
    CCMenuItemToggle *int2x4toggle;
    
    int i3x1;
    
    
    
    CCMenuItem *int3x1;
    CCMenuItem *int3x1Sel;
    CCMenuItemToggle *int3x1toggle;
    

    int i3x2;
    
    CCMenuItem *int3x2;
    CCMenuItem *int3x2Sel;
    CCMenuItemToggle *int3x2toggle;
    
    
    int i3x3;
    
    
    CCMenuItem *int3x3;
    CCMenuItem *int3x3Sel;
    CCMenuItemToggle *int3x3toggle;
    
    
    int i3x4;
    
    CCMenuItem *int3x4;
    CCMenuItem *int3x4Sel;
    CCMenuItemToggle *int3x4toggle;
    
    
    int i4x1;
    
    
    CCMenuItem *int4x1;
    CCMenuItem *int4x1Sel;
    CCMenuItemToggle *int4x1toggle;
    
    
    int i4x2;
    
    
    CCMenuItem *int4x2;
    CCMenuItem *int4x2Sel;
    CCMenuItemToggle *int4x2toggle;
    
    
    int i4x3;
    
    
    CCMenuItem *int4x3;
    CCMenuItem *int4x3Sel;
    CCMenuItemToggle *int4x3toggle;
    
    
    int i4x4;

    
    CCMenuItem *int4x4;
    CCMenuItem *int4x4Sel;
    CCMenuItemToggle *int4x4toggle;
    //generate random colors
    
    
    
    bool playedTutorial;
    CCLabelBMFont* tut;
}
- (void)startTutorial;


@end

