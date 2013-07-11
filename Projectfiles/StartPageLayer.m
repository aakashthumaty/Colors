/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "StartPageLayer.h"
#import "GameLayer.h"
#import "LevelSelectLayer.h"



@interface StartPageLayer (PrivateMethods)
@end

@implementation StartPageLayer

-(id) init
{
	if (self = [super initWithColor:ccc4(235,242,242,242)])
	{
        CCMenuItemImage *logo= [CCMenuItemImage itemFromNormalImage:@"TriColorsLogo!.png"
                                                      selectedImage:@"TriColorsLogo!.png" target:nil selector:nil];
        
        
        logo.position = ccp(0,100);
        
        
        
        
        CCMenuItemImage *play= [CCMenuItemImage itemFromNormalImage:@"play.png"
                                                      selectedImage:@"playclicked.png" target:self selector:@selector(playGame:)];
        
        play.position = ccp(0,-60);
        
        CCMenu *menu = [CCMenu menuWithItems:play,logo, nil];
        
        [self addChild:menu];
        

      
	}

	return self;
}

-(void) playGame: (id)sender
{
    NSLog(@"switch to GameLayer");
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[LevelSelectLayer alloc] init]]];
}

- (void)buttonOneAction:(id)sender

{
    
    // Get a reference to the button that was tapped
    
    CCMenuItemFont *button = (CCMenuItemFont *)sender;
    
    
    
    // Have the button spin around!
    
    [button runAction:[CCRotateBy actionWithDuration:1 angle:360]];
    
}

@end






