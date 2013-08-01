/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "StartPageLayer.h"
#import "GameLayer.h"

#import "LevelSelectLayer.h"

#import "LevelPackLayer.h"


@interface StartPageLayer (PrivateMethods)
@end

@implementation StartPageLayer

-(id) init
{
	if (self = [super initWithColor:ccc4(0,0,0,100)])
	{
        CCMenuItemImage *logo= [CCMenuItemImage itemFromNormalImage:@"TriColorsLogo!.png"
                                                      selectedImage:@"TriColorsLogo!.png" target:nil selector:nil];
        
        
        logo.position = ccp(0,100);
        
        
        CCMenuItemFont *play = [CCMenuItemFont itemFromString: @"Play Now"
                                                // selectedString:play.color = ccc3(0,250,0)
                                                       target:self selector:@selector(playGame:)];
        
        [play setFontName:@"Arial"];
        [play setFontSize:25];
        play.color = ccc3(0,200,0);
        play.position = ccp(0,-60);
        
        
        
        
        CCMenuItemFont *timeTrial = [CCMenuItemFont itemFromString: @"Time Trial"
                                // selectedString:play.color = ccc3(0,250,0)
                                                       target:self selector:@selector(timeTrialMode:)];
        
        [timeTrial setFontName:@"Arial"];
        [timeTrial setFontSize:25];
        timeTrial.color = ccc3(200,0,0);
        timeTrial.position = ccp(0,-100);
        /*
        
        CCMenuItemImage *play= [CCMenuItemImage itemFromNormalImage:@"play.png"
                                                      selectedImage:@"playclicked.png" target:self selector:@selector(playGame:)];
        
        play.position = ccp(0,-60);
        */
        CCMenu *menu = [CCMenu menuWithItems:play,logo,timeTrial, nil];
        
        [self addChild:menu];
        

      
	}

	return self;
}

-(void) playGame: (id)sender
{
    NSLog(@"switch to GameLayer");
    
    
    CCMenuItemFont *play = (CCMenuItemFont *)sender;
    
    [play runAction:[CCRotateBy actionWithDuration:1 angle:360]];
    
    timeTrialMode = false;
    
    // write to storage
    [[NSUserDefaults standardUserDefaults] setBool:false forKey:@"timeTrial"];
    //read from storage
//    bool timeTrial = [[NSUserDefaults standardUserDefaults] boolForKey:@"timeTrial"];
    
    
    play.color = ccc3(250,0,200);
    
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionZoomFlipAngular transitionWithDuration:0.75 scene:[[LevelPackLayer alloc]init]]];
    
      // [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayer alloc]init]]];
}

-(void) timeTrialMode: (id)sender
{
    NSLog(@"switch to Time Trial");
    
    
    CCMenuItemFont *play = (CCMenuItemFont *)sender;
    
    [play runAction:[CCRotateBy actionWithDuration:1 angle:360]];
    
    
    
    play.color = ccc3(0,0,200);
    
    timeTrialMode = true;
    
    [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"timeTrial"];

    
    do {
        randomLevel = arc4random_uniform(321);

        
    }
    while (randomLevel == 0 || (randomLevel > 20 && randomLevel < 201) || (randomLevel > 220 && randomLevel < 301));
;
    
    [[NSUserDefaults standardUserDefaults] setInteger:randomLevel forKey:@"level"];

    [[CCDirector sharedDirector] replaceScene:[CCTransitionZoomFlipAngular transitionWithDuration:0.75 scene:[[GameLayer alloc]init]]];
    
    // [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayer alloc]init]]];
}


- (void)buttonOneAction:(id)sender

{
    
    // Get a reference to the button that was tapped
    
    CCSprite *button ;
    
    
    
    // Have the button spin around!
    
    [button runAction:[CCRotateBy actionWithDuration:1 angle:360]];
    
}

@end






