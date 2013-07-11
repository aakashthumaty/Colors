//
//  LevelSelectLayer.m
//  Tricolors
//
//  Created by Aakash on 7/1/13.
//
//

#import "LevelSelectLayer.h"
#import "GameLayer.h"
@implementation LevelSelectLayer

-(id) init
{
    if (self = [super initWithColor:ccc4(0,0,0,100)])
        
    {
        
        //select
     
        


        
        
        
        levelSelectTitleString = [NSString stringWithFormat:@"LEVEL SELECT"];
        
        levelSelectTitle = [CCLabelTTF labelWithString:levelSelectTitleString
                                      dimensions:CGSizeMake(100, 100) alignment:UITextAlignmentCenter
                                        fontName:@"Arial" fontSize:25.0];
       levelSelectTitle.position = ccp(160,420);
        levelSelectTitle.color=ccc3(0,255,0);
        [self addChild:levelSelectTitle];
        
       
        
        
   
        
    NSString *imageSetlvl1button = [NSString stringWithFormat:@"lvl1butt.png"];
    
    NSString *imageSetlvl1buttonsel = [NSString stringWithFormat:@"lvl1buttsel.png"];
    
    lvl1button = [CCMenuItemImage itemWithNormalImage:imageSetlvl1button
                                    selectedImage:imageSetlvl1buttonsel target:self selector:@selector(gotogamelayer1:)];
    lvl1buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl1buttonsel
                                       selectedImage:imageSetlvl1button target:nil selector:nil];
    
    lvl1button.position = ccp(31.5,330);
    
    
        NSString *imageSetlvl2button = [NSString stringWithFormat:@"lvl2butt.png"];
        
        NSString *imageSetlvl2buttonsel = [NSString stringWithFormat:@"lvl2buttsel.png"];
        
        lvl2button = [CCMenuItemImage itemWithNormalImage:imageSetlvl2button
                                            selectedImage:imageSetlvl2buttonsel target:self selector:@selector(gotogamelayer2:)];
        lvl2buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl2buttonsel
                                               selectedImage:imageSetlvl2button target:nil selector:nil];
        
        lvl2button.position = ccp(91,330);
        
        
        
        NSString *imageSetlvl3button = [NSString stringWithFormat:@"lvl3butt.png"];
        
        NSString *imageSetlvl3buttonsel = [NSString stringWithFormat:@"lvl3buttsel.png"];
        
        lvl3button = [CCMenuItemImage itemWithNormalImage:imageSetlvl3button
                                            selectedImage:imageSetlvl3buttonsel target:self selector:@selector(gotogamelayer3:)];
        lvl3buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl3buttonsel
                                               selectedImage:imageSetlvl3button target:nil selector:nil];
        
        lvl3button.position = ccp(149,330);
        
        
        NSString *imageSetlvl4button = [NSString stringWithFormat:@"lvl4butt.png"];
        
        NSString *imageSetlvl4buttonsel = [NSString stringWithFormat:@"lvl4buttsel.png"];
        
        lvl4button = [CCMenuItemImage itemWithNormalImage:imageSetlvl4button
                                            selectedImage:imageSetlvl4buttonsel target:self selector:@selector(gotogamelayer4:)];
        lvl4buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl4buttonsel
                                               selectedImage:imageSetlvl4button target:nil selector:nil];
        
        lvl4button.position = ccp(208.5,330);
        
        
        NSString *imageSetlvl5button = [NSString stringWithFormat:@"lvl5butt.png"];
        
        NSString *imageSetlvl5buttonsel = [NSString stringWithFormat:@"lvl5buttsel.png"];
        
        lvl5button = [CCMenuItemImage itemWithNormalImage:imageSetlvl5button
                                            selectedImage:imageSetlvl5buttonsel target:self selector:@selector(gotogamelayer5:)];
        lvl5buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl5buttonsel
                                               selectedImage:imageSetlvl5button target:nil selector:nil];
        
        lvl5button.position = ccp(31.5,260);
        
        
        NSString *imageSetlvl6button = [NSString stringWithFormat:@"lvl6butt.png"];
        
        NSString *imageSetlvl6buttonsel = [NSString stringWithFormat:@"lvl6buttsel.png"];
        
        lvl6button = [CCMenuItemImage itemWithNormalImage:imageSetlvl6button
                                            selectedImage:imageSetlvl6buttonsel target:self selector:@selector(gotogamelayer6:)];
        lvl6buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl6buttonsel
                                               selectedImage:imageSetlvl6button target:nil selector:nil];
        
        lvl6button.position = ccp(91,260);
        
        
        NSString *imageSetlvl7button = [NSString stringWithFormat:@"lvl7butt.png"];
        
        NSString *imageSetlvl7buttonsel = [NSString stringWithFormat:@"lvl7buttsel.png"];
        
        lvl7button = [CCMenuItemImage itemWithNormalImage:imageSetlvl7button
                                            selectedImage:imageSetlvl7buttonsel target:self selector:@selector(gotogamelayer7:)];
        lvl7buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl7buttonsel
                                               selectedImage:imageSetlvl7button target:nil selector:nil];
        
        lvl7button.position = ccp(149,260);
        
        
        NSString *imageSetlvl8button = [NSString stringWithFormat:@"lvl8butt.png"];
        
        NSString *imageSetlvl8buttonsel = [NSString stringWithFormat:@"lvl8buttsel.png"];
        
        lvl8button = [CCMenuItemImage itemWithNormalImage:imageSetlvl8button
                                            selectedImage:imageSetlvl8buttonsel target:self selector:@selector(gotogamelayer8:)];
        lvl8buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl8buttonsel
                                               selectedImage:imageSetlvl8button target:nil selector:nil];
        
        lvl8button.position = ccp(208.5,260);
        
        
        NSString *imageSetlvl9button = [NSString stringWithFormat:@"lvl9butt.png"];
        
        NSString *imageSetlvl9buttonsel = [NSString stringWithFormat:@"lvl9buttsel.png"];
        
        lvl9button = [CCMenuItemImage itemWithNormalImage:imageSetlvl9button
                                            selectedImage:imageSetlvl9buttonsel target:self selector:@selector(gotogamelayer9:)];
        lvl9buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl9buttonsel
                                               selectedImage:imageSetlvl9button target:nil selector:nil];
        
        lvl9button.position = ccp(31.5,190);
        
        
        NSString *imageSetlvl10button = [NSString stringWithFormat:@"lvl10butt.png"];
        
        NSString *imageSetlvl10buttonsel = [NSString stringWithFormat:@"lvl10buttsel.png"];
        
        lvl10button = [CCMenuItemImage itemWithNormalImage:imageSetlvl10button
                                            selectedImage:imageSetlvl10buttonsel target:self selector:@selector(gotogamelayer10:)];
        lvl10buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl10buttonsel
                                               selectedImage:imageSetlvl10button target:nil selector:nil];
        
        lvl10button.position = ccp(91,190);
        
        
        NSString *imageSetlvl11button = [NSString stringWithFormat:@"lvl11butt.png"];
        
        NSString *imageSetlvl11buttonsel = [NSString stringWithFormat:@"lvl11buttsel.png"];
        
        lvl11button = [CCMenuItemImage itemWithNormalImage:imageSetlvl11button
                                            selectedImage:imageSetlvl11buttonsel target:self selector:@selector(gotogamelayer11:)];
        lvl11buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl11buttonsel
                                               selectedImage:imageSetlvl11button target:nil selector:nil];
        
        lvl11button.position = ccp(149,190);
        
        
        NSString *imageSetlvl12button = [NSString stringWithFormat:@"lvl12butt.png"];
        
        NSString *imageSetlvl12buttonsel = [NSString stringWithFormat:@"lvl12buttsel.png"];
        
        lvl12button = [CCMenuItemImage itemWithNormalImage:imageSetlvl12button
                                            selectedImage:imageSetlvl12buttonsel target:self selector:@selector(gotogamelayer12:)];
        lvl12buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl12buttonsel
                                               selectedImage:imageSetlvl12button target:nil selector:nil];
        
        lvl12button.position = ccp(208.5,190);
        
        
        NSString *imageSetlvl13button = [NSString stringWithFormat:@"lvl13butt.png"];
        
        NSString *imageSetlvl13buttonsel = [NSString stringWithFormat:@"lvl13buttsel.png"];
        
        lvl13button = [CCMenuItemImage itemWithNormalImage:imageSetlvl13button
                                            selectedImage:imageSetlvl13buttonsel target:self selector:@selector(gotogamelayer13:)];
        lvl13buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl13buttonsel
                                               selectedImage:imageSetlvl13button target:nil selector:nil];
        
        lvl13button.position = ccp(31.5,120);
        
        
        NSString *imageSetlvl14button = [NSString stringWithFormat:@"lvl14butt.png"];
        
        NSString *imageSetlvl14buttonsel = [NSString stringWithFormat:@"lvl14buttsel.png"];
        
        lvl14button = [CCMenuItemImage itemWithNormalImage:imageSetlvl14button
                                            selectedImage:imageSetlvl14buttonsel target:self selector:@selector(gotogamelayer4:)];
        lvl14buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl14buttonsel
                                               selectedImage:imageSetlvl14button target:nil selector:nil];
        
        lvl14button.position = ccp(91,120);
        
        
        NSString *imageSetlvl15button = [NSString stringWithFormat:@"lvl15butt.png"];
        
        NSString *imageSetlvl15buttonsel = [NSString stringWithFormat:@"lvl15buttsel.png"];
        
        lvl15button = [CCMenuItemImage itemWithNormalImage:imageSetlvl15button
                                             selectedImage:imageSetlvl15buttonsel target:self selector:@selector(gotogamelayer4:)];
        lvl15buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl15buttonsel
                                               selectedImage:imageSetlvl15button target:nil selector:nil];
        
        lvl15button.position = ccp(149,120);
        
        
        NSString *imageSetlvl16button = [NSString stringWithFormat:@"lvl16butt.png"];
        
        NSString *imageSetlvl16buttonsel = [NSString stringWithFormat:@"lvl16buttsel.png"];
        
        lvl16button = [CCMenuItemImage itemWithNormalImage:imageSetlvl16button
                                             selectedImage:imageSetlvl16buttonsel target:self selector:@selector(gotogamelayer4:)];
        lvl16buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl16buttonsel
                                               selectedImage:imageSetlvl16button target:nil selector:nil];
        
        lvl16button.position = ccp(208.5,120);
        
        
        levelSelect = [CCMenu menuWithItems:lvl1button, lvl2button, lvl3button, lvl4button, lvl5button, lvl6button, lvl7button, lvl8button, lvl9button, lvl10button, lvl11button, lvl12button, lvl13button, lvl14button, lvl15button, lvl16button, nil];

        levelSelect.position = ccp(40, 30);
        
        [self addChild: levelSelect];

           return self;
    }
}


-(void) gotogamelayer1:(id)sender
{
       [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"level"];
    
     [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer2:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer3:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}

-(void) gotogamelayer4:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:4 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer5:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:5 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer6:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:6 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer7:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:7 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer8:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:8 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer9:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:9 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer10:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:10 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer11:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:11 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer12:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:12 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer13:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:13 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer14:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:14 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer15:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:15 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer16:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:16 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}


@end
