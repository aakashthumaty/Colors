//
//  LevelPackLayer.m
//  Tricolors
//
//  Created by Aakash on 7/13/13.
//
//

#import "LevelPackLayer.h"
#import "LevelSelectLayer.h"
#import "LevelSelectLayerpack2.h"
#import "LevelSelectLayerpack3.h"
#import "GameLayer.h"
@implementation LevelPackLayer


-(id) init
{
	if (self = [super initWithColor:ccc4(0,0,0,250)])
	{
        screenSize = [[CCDirector sharedDirector] winSize];
        
        CCMenuItemImage *backButton = [CCMenuItemImage itemFromNormalImage:@"backButton.png"
                                                           selectedImage:@"backButtonclicked.png" target:self selector:@selector(back:)];
        
        
        backButton.position = ccp(20,400);
        

        CCMenu *back = [CCMenu menuWithItems:backButton, nil];
        
        back.position = ccp(40,30);
        
        [self addChild:back z:11];

        
        CCMenuItemImage *lvlpack1 = [CCMenuItemImage itemFromNormalImage:@"pack1butt.png"
                                                           selectedImage:@"pack1buttclicked.png" target:self selector:@selector(gotolvlpack1:)];
        
        
        lvlpack1.position = ccp(160,360);
        
        
        
        
        CCMenuItemImage *lvlpack2 = [CCMenuItemImage itemFromNormalImage:@"pack2butt.png"
                                                      selectedImage:@"pack2buttclicked.png" target:self selector:@selector(gotolvlpack2:)];
        
        lvlpack2.position = ccp(160, 240);
        
       
        
        
        CCMenuItemImage *lvlpack3 = [CCMenuItemImage itemFromNormalImage:@"pack3butt.png"
                                                           selectedImage:@"pack3buttclicked.png" target:self selector:@selector(gotolvlpack3:)];
        
        lvlpack3.position = ccp(160, 120);
        
        CCMenu *lvlpackmenu = [CCMenu menuWithItems:lvlpack1, lvlpack2, lvlpack3, nil];
        
        [self addChild:lvlpackmenu z:10];
        lvlpackmenu.position = ccp(0,0);
        
        
	}
    
	return self;
}

-(void) back: (id)sender
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[StartPageLayer alloc]init]]];
}

-(void) gotolvlpack1: (id)sender
{    
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayer alloc]init]]];
    
    
    // [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayer alloc]init]]];
}

- (void)gotolvlpack2:(id)sender

{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayerpack2 alloc]init]]];
}

- (void)gotolvlpack3:(id)sender

{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInR transitionWithDuration:0.75 scene:[[LevelSelectLayerpack3 alloc]init]]];
}

@end
