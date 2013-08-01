//
//  LevelSelectLayer.m
//  Tricolors
//
//  Created by Aakash on 7/1/13.
//
//



//remember to change the else statements for the 1 dot turnouts

#import "LevelSelectLayer.h"
#import "GameLayer.h"
#import "LevelPackLayer.h"
@implementation LevelSelectLayer

-(id) init
{
    if (self = [super initWithColor:ccc4(0,0,0,100)])
        
    {
        
        CCMenuItemImage *backButton = [CCMenuItemImage itemWithNormalImage:@"backButton.png"
                                                             selectedImage:@"backButtonclicked.png" target:self selector:@selector(back:)];
        
        
        backButton.position = ccp(20, 400);
        
        
        //select
     
        


        
        
        
        levelSelectTitleString = [NSString stringWithFormat:@"LEVEL SELECT"];
        
        levelSelectTitle = [CCLabelTTF labelWithString:levelSelectTitleString
                                      dimensions:CGSizeMake(100, 100) alignment:UITextAlignmentCenter
                                        fontName:@"Arial" fontSize:25.0];
       levelSelectTitle.position = ccp(160,420);
        levelSelectTitle.color=ccc3(0,255,0);
        [self addChild:levelSelectTitle];
        
        
        
        
        bool checklvl1stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl1comp"];

        if (checklvl1stat == true)
    {
            
        
        
        int isLevel1Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl1score"];
        int perfectCount = 4;
       
                if(isLevel1Perf == perfectCount)
                    {


                            CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                            perfectCheckmarks.position = ccp(71,339);
                            [self addChild:perfectCheckmarks z:3];
                    }
     

                else if (isLevel1Perf > perfectCount && isLevel1Perf < perfectCount + 3)
                    {
                        

                            CCMenuItemImage *okayCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                        selectedImage:@"okaychecks.png" target:nil selector:nil];
            
            
                        okayCheckmarks.position = ccp(71,339);
                        [self addChild:okayCheckmarks z:3];
                    }
                else
                {
                    

                    CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                                selectedImage:@"check.png" target:nil selector:nil];
                    
                    
                    perfectCheckmarks.position = ccp(71,339);
                    [self addChild:perfectCheckmarks z:3];
                    
                }

           
        }
    
    
            NSString *imageSetlvl1button = [NSString stringWithFormat:@"lvl1butt.png"];
            
            NSString *imageSetlvl1buttonsel = [NSString stringWithFormat:@"lvl1buttsel.png"];
            
            lvl1button = [CCMenuItemImage itemWithNormalImage:imageSetlvl1button
                                                selectedImage:imageSetlvl1buttonsel target:self selector:@selector(gotogamelayer1:)];
            lvl1buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl1buttonsel
                                                   selectedImage:imageSetlvl1button target:nil selector:nil];
            
            lvl1button.position = ccp(31.5,330);
        
        
        bool checklvl2stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl2comp"];
        
        if (checklvl2stat == true)
        {
            
            
            
            int isLevel2Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl2score"];
            int perfectCount = 6;
            
            
            
            if(isLevel2Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (isLevel2Perf > perfectCount && isLevel2Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                

                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,339);
                [self addChild:perfectCheckmarks z:3];
                
            }

        }

    
        
     
        NSString *imageSetlvl2button = [NSString stringWithFormat:@"lvl2butt.png"];
        
        NSString *imageSetlvl2buttonsel = [NSString stringWithFormat:@"lvl2buttsel.png"];
        
        lvl2button = [CCMenuItemImage itemWithNormalImage:imageSetlvl2button
                                            selectedImage:imageSetlvl2buttonsel target:self selector:@selector(gotogamelayer2:)];
        lvl2buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl2buttonsel
                                               selectedImage:imageSetlvl2button target:nil selector:nil];
        
        lvl2button.position = ccp(91,330);
        
        bool checklvl3stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl3comp"];
        
        if (checklvl3stat == true)
        {
            
            
            
            int islevel3Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl3score"];
            int perfectCount = 4;
            
            
            
            if(islevel3Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel3Perf > perfectCount && islevel3Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,339);
                [self addChild:perfectCheckmarks z:3];
                
            }
        }

        
        NSString *imageSetlvl3button = [NSString stringWithFormat:@"lvl3butt.png"];
        
        NSString *imageSetlvl3buttonsel = [NSString stringWithFormat:@"lvl3buttsel.png"];
        
        lvl3button = [CCMenuItemImage itemWithNormalImage:imageSetlvl3button
                                            selectedImage:imageSetlvl3buttonsel target:self selector:@selector(gotogamelayer3:)];
        lvl3buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl3buttonsel
                                               selectedImage:imageSetlvl3button target:nil selector:nil];
        
        lvl3button.position = ccp(149,330);
        
        
        
        bool checklvl4stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl4comp"];
        
        if (checklvl4stat == true)
        {
            
            
            
            int islevel4Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl4score"];
            int perfectCount = 4;
            
            
            
            if(islevel4Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel4Perf < perfectCount + 3 && islevel4Perf > perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,339);
                [self addChild:perfectCheckmarks z:3];
            }
            else if(islevel4Perf > perfectCount + 2)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,339);
                [self addChild:perfectCheckmarks z:3];
                
            }

        }

        
        
        NSString *imageSetlvl4button = [NSString stringWithFormat:@"lvl4butt.png"];
        
        NSString *imageSetlvl4buttonsel = [NSString stringWithFormat:@"lvl4buttsel.png"];
        
        lvl4button = [CCMenuItemImage itemWithNormalImage:imageSetlvl4button
                                            selectedImage:imageSetlvl4buttonsel target:self selector:@selector(gotogamelayer4:)];
        lvl4buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl4buttonsel
                                               selectedImage:imageSetlvl4button target:nil selector:nil];
        
        lvl4button.position = ccp(208.5,330);
        
        
        
        bool checklvl5stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl5comp"];
        
        if (checklvl5stat == true)
        {
            
            
            
            int islevel5Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl5score"];
            int perfectCount = 6;
            
            if(islevel5Perf == perfectCount)
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,269);
                [self addChild:perfectCheckmarks z:3];
            }
            
            
            else if (islevel5Perf > perfectCount && islevel5Perf < perfectCount + 3)
            {
                
                
                CCMenuItemImage *okayCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                         selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                okayCheckmarks.position = ccp(71,269);
                [self addChild:okayCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,269);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
            
        }

        
        
        
        NSString *imageSetlvl5button = [NSString stringWithFormat:@"lvl5butt.png"];
        
        NSString *imageSetlvl5buttonsel = [NSString stringWithFormat:@"lvl5buttsel.png"];
        
        lvl5button = [CCMenuItemImage itemWithNormalImage:imageSetlvl5button
                                            selectedImage:imageSetlvl5buttonsel target:self selector:@selector(gotogamelayer5:)];
        lvl5buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl5buttonsel
                                               selectedImage:imageSetlvl5button target:nil selector:nil];
        
        lvl5button.position = ccp(31.5,260);
        
        
        bool checklvl6stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl6comp"];
        
        if (checklvl6stat == true)
        {
            
            
            
            int islevel6Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl6score"];
            int perfectCount = 6;
            
            
            
            if(islevel6Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel6Perf > perfectCount && islevel6Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,269);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        
        NSString *imageSetlvl6button = [NSString stringWithFormat:@"lvl6butt.png"];
        
        NSString *imageSetlvl6buttonsel = [NSString stringWithFormat:@"lvl6buttsel.png"];
        
        lvl6button = [CCMenuItemImage itemWithNormalImage:imageSetlvl6button
                                            selectedImage:imageSetlvl6buttonsel target:self selector:@selector(gotogamelayer6:)];
        lvl6buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl6buttonsel
                                               selectedImage:imageSetlvl6button target:nil selector:nil];
        
        lvl6button.position = ccp(91,260);
        
        bool checklvl7stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl7comp"];
        
        if (checklvl7stat == true)
        {
            
            
            
            int islevel7Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl7score"];
            int perfectCount = 8;
            
            
            
            if(islevel7Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel7Perf < perfectCount + 3 && islevel7Perf > perfectCount )
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,269);
                [self addChild:perfectCheckmarks z:3];
                
            }
        }

        
        
        
        
        NSString *imageSetlvl7button = [NSString stringWithFormat:@"lvl7butt.png"];
        
        NSString *imageSetlvl7buttonsel = [NSString stringWithFormat:@"lvl7buttsel.png"];
        
        lvl7button = [CCMenuItemImage itemWithNormalImage:imageSetlvl7button
                                            selectedImage:imageSetlvl7buttonsel target:self selector:@selector(gotogamelayer7:)];
        lvl7buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl7buttonsel
                                               selectedImage:imageSetlvl7button target:nil selector:nil];
        
        lvl7button.position = ccp(149,260);
        
        
        
        
        bool checklvl8stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl8comp"];
        
        if (checklvl8stat == true)
        {
            
            
            
            int islevel8Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl8score"];
            int perfectCount = 12;
            
            
            
            if(islevel8Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel8Perf < perfectCount + 3 && islevel8Perf > perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,269);
                [self addChild:perfectCheckmarks z:3];
            }
            else if(islevel8Perf > perfectCount + 2)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,269);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        NSString *imageSetlvl8button = [NSString stringWithFormat:@"lvl8butt.png"];
        
        NSString *imageSetlvl8buttonsel = [NSString stringWithFormat:@"lvl8buttsel.png"];
        
        lvl8button = [CCMenuItemImage itemWithNormalImage:imageSetlvl8button
                                            selectedImage:imageSetlvl8buttonsel target:self selector:@selector(gotogamelayer8:)];
        lvl8buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl8buttonsel
                                               selectedImage:imageSetlvl8button target:nil selector:nil];
        
        lvl8button.position = ccp(208.5,260);
        
        
        
        bool checklvl9stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl9comp"];
        
        if (checklvl9stat == true)
        {
            
            
            
            int islevel9Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl9score"];
            int perfectCount = 6;
            
            if(islevel9Perf == perfectCount)
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,199);
                [self addChild:perfectCheckmarks z:3];
            }
            
            
            else if (islevel9Perf > perfectCount && islevel9Perf < perfectCount + 3)
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                         selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,199);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
            
        }

        
        
        
        
        NSString *imageSetlvl9button = [NSString stringWithFormat:@"lvl9butt.png"];
        
        NSString *imageSetlvl9buttonsel = [NSString stringWithFormat:@"lvl9buttsel.png"];
        
        lvl9button = [CCMenuItemImage itemWithNormalImage:imageSetlvl9button
                                            selectedImage:imageSetlvl9buttonsel target:self selector:@selector(gotogamelayer9:)];
        lvl9buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl9buttonsel
                                               selectedImage:imageSetlvl9button target:nil selector:nil];
        
        lvl9button.position = ccp(31.5,190);
        
        
        
        
        bool checklvl10stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl10comp"];
        
        if (checklvl10stat == true)
        {
            
            
            
            int islevel10Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl10score"];
            int perfectCount = 10;
            
            
            
            if(islevel10Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel10Perf > perfectCount && islevel10Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,199);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        NSString *imageSetlvl10button = [NSString stringWithFormat:@"lvl10butt.png"];
        
        NSString *imageSetlvl10buttonsel = [NSString stringWithFormat:@"lvl10buttsel.png"];
        
        lvl10button = [CCMenuItemImage itemWithNormalImage:imageSetlvl10button
                                            selectedImage:imageSetlvl10buttonsel target:self selector:@selector(gotogamelayer10:)];
        lvl10buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl10buttonsel
                                               selectedImage:imageSetlvl10button target:nil selector:nil];
        
        lvl10button.position = ccp(91,190);
        
        
        
        bool checklvl11stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl11comp"];
        
        if (checklvl11stat == true)
        {
            
            
            
            int islevel11Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl11score"];
            int perfectCount = 7;
            
            
            
            if(islevel11Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel11Perf > perfectCount && islevel11Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,199);
                [self addChild:perfectCheckmarks z:3];
                
            }
        }

        
        
        
        
        NSString *imageSetlvl11button = [NSString stringWithFormat:@"lvl11butt.png"];
        
        NSString *imageSetlvl11buttonsel = [NSString stringWithFormat:@"lvl11buttsel.png"];
        
        lvl11button = [CCMenuItemImage itemWithNormalImage:imageSetlvl11button
                                            selectedImage:imageSetlvl11buttonsel target:self selector:@selector(gotogamelayer11:)];
        lvl11buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl11buttonsel
                                               selectedImage:imageSetlvl11button target:nil selector:nil];
        
        lvl11button.position = ccp(149,190);
        
        
        
        
        
        bool checklvl12stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl12comp"];
        
        if (checklvl12stat == true)
        {
            
            
            
            int islevel12Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl12score"];
            int perfectCount = 12;
            
            
            
            if(islevel12Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel12Perf < perfectCount + 3 && islevel12Perf > perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,199);
                [self addChild:perfectCheckmarks z:3];
            }
            else if(islevel12Perf > perfectCount + 2)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,199);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        NSString *imageSetlvl12button = [NSString stringWithFormat:@"lvl12butt.png"];
        
        NSString *imageSetlvl12buttonsel = [NSString stringWithFormat:@"lvl12buttsel.png"];
        
        lvl12button = [CCMenuItemImage itemWithNormalImage:imageSetlvl12button
                                            selectedImage:imageSetlvl12buttonsel target:self selector:@selector(gotogamelayer12:)];
        lvl12buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl12buttonsel
                                               selectedImage:imageSetlvl12button target:nil selector:nil];
        
        lvl12button.position = ccp(208.5,190);
        
        
        
        
        bool checklvl13stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl13comp"];
        
        if (checklvl13stat == true)
        {
            
            
            
            int islevel13Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl13score"];
            int perfectCount = 6;
            
            if(islevel13Perf == perfectCount)
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,129);
                [self addChild:perfectCheckmarks z:3];
            }
            
            
            else if (islevel13Perf > perfectCount && islevel13Perf < perfectCount + 3)
            {
                
                
                CCMenuItemImage *okayCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                         selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                okayCheckmarks.position = ccp(71,129);
                [self addChild:okayCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,129);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
            
        }

        
        
        
        NSString *imageSetlvl13button = [NSString stringWithFormat:@"lvl13butt.png"];
        
        NSString *imageSetlvl13buttonsel = [NSString stringWithFormat:@"lvl13buttsel.png"];
        
        lvl13button = [CCMenuItemImage itemWithNormalImage:imageSetlvl13button
                                            selectedImage:imageSetlvl13buttonsel target:self selector:@selector(gotogamelayer13:)];
        lvl13buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl13buttonsel
                                               selectedImage:imageSetlvl13button target:nil selector:nil];
        
        lvl13button.position = ccp(31.5,120);
        
        
        
        
        bool checklvl14stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl14comp"];
        
        if (checklvl14stat == true)
        {
            
            
            
            int islevel14Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl14score"];
            int perfectCount = 20;
            
            
            
            if(islevel14Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel14Perf > perfectCount && islevel14Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,129);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        
        NSString *imageSetlvl14button = [NSString stringWithFormat:@"lvl14butt.png"];
        
        NSString *imageSetlvl14buttonsel = [NSString stringWithFormat:@"lvl14buttsel.png"];
        
        lvl14button = [CCMenuItemImage itemWithNormalImage:imageSetlvl14button
                                            selectedImage:imageSetlvl14buttonsel target:self selector:@selector(gotogamelayer14:)];
        lvl14buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl14buttonsel
                                               selectedImage:imageSetlvl14button target:nil selector:nil];
        
        lvl14button.position = ccp(91,120);
        
        
        
        
        
        bool checklvl15stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl15comp"];
        
        if (checklvl15stat == true)
        {
            
            
            
            int islevel15Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl15score"];
            int perfectCount = 8;
            
            
            
            if(islevel15Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel15Perf > perfectCount && islevel15Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,129);
                [self addChild:perfectCheckmarks z:3];
                
            }
        }

        
        
        NSString *imageSetlvl15button = [NSString stringWithFormat:@"lvl15butt.png"];
        
        NSString *imageSetlvl15buttonsel = [NSString stringWithFormat:@"lvl15buttsel.png"];
        
        lvl15button = [CCMenuItemImage itemWithNormalImage:imageSetlvl15button
                                             selectedImage:imageSetlvl15buttonsel target:self selector:@selector(gotogamelayer15:)];
        lvl15buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl15buttonsel
                                               selectedImage:imageSetlvl15button target:nil selector:nil];
        
        lvl15button.position = ccp(149,120);
        
        
        
        
        bool checklvl16stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl16comp"];
        
        if (checklvl16stat == true)
        {
            
            
            
            int islevel16Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl16score"];
            int perfectCount = 8;
            
            
            
            if(islevel16Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel16Perf < perfectCount + 3 && islevel16Perf > perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,129);
                [self addChild:perfectCheckmarks z:3];
            }
            else if(islevel16Perf > perfectCount + 2)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,129);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        
        
        NSString *imageSetlvl16button = [NSString stringWithFormat:@"lvl16butt.png"];
        
        NSString *imageSetlvl16buttonsel = [NSString stringWithFormat:@"lvl16buttsel.png"];
        
        lvl16button = [CCMenuItemImage itemWithNormalImage:imageSetlvl16button
                                             selectedImage:imageSetlvl16buttonsel target:self selector:@selector(gotogamelayer16:)];
        lvl16buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl16buttonsel
                                               selectedImage:imageSetlvl16button target:nil selector:nil];
        
        lvl16button.position = ccp(208.5,120);
        
        
        
        bool checklvl17stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl17comp"];
        
        if (checklvl17stat == true)
        {
            
            
            
            int islevel17Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl17score"];
            int perfectCount = 10;
            
            if(islevel17Perf == perfectCount)
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,59);
                [self addChild:perfectCheckmarks z:3];
            }
            
            
            else if (islevel17Perf > perfectCount && islevel17Perf < perfectCount + 3)
            {
                
                
                CCMenuItemImage *okayCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                         selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                okayCheckmarks.position = ccp(71,59);
                [self addChild:okayCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(71,59);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
            
        }

        
        
        
        
        
        NSString *imageSetlvl17button = [NSString stringWithFormat:@"lvl17butt.png"];
        
        NSString *imageSetlvl17buttonsel = [NSString stringWithFormat:@"lvl17buttsel.png"];
        
        lvl17button = [CCMenuItemImage itemWithNormalImage:imageSetlvl17button
                                             selectedImage:imageSetlvl17buttonsel target:self selector:@selector(gotogamelayer17:)];
        lvl17buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl17buttonsel
                                                selectedImage:imageSetlvl17button target:nil selector:nil];
        
        lvl17button.position = ccp(31.5,50);
        
        
        
        bool checklvl18stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl18comp"];
        
        if (checklvl18stat == true)
        {
            
            
            
            int islevel18Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl18score"];
            int perfectCount = 4;
            
            
            
            if(islevel18Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel18Perf > perfectCount && islevel18Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                
                
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(131,59);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        
        
        
        NSString *imageSetlvl18button = [NSString stringWithFormat:@"lvl18butt.png"];
        
        NSString *imageSetlvl18buttonsel = [NSString stringWithFormat:@"lvl18buttsel.png"];
        
        lvl18button = [CCMenuItemImage itemWithNormalImage:imageSetlvl18button
                                             selectedImage:imageSetlvl18buttonsel target:self selector:@selector(gotogamelayer18:)];
        lvl18buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl18buttonsel
                                                selectedImage:imageSetlvl18button target:nil selector:nil];
        
        lvl18button.position = ccp(91,50);
        
        
        bool checklvl19stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl19comp"];
        
        if (checklvl19stat == true)
        {
            
            
            
            int islevel19Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl19score"];
            int perfectCount = 6;
            
            
            
            if(islevel19Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel19Perf > perfectCount && islevel19Perf < perfectCount + 3)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(189,59);
                [self addChild:perfectCheckmarks z:3];
                
            }
        }

        
        
        
        
        NSString *imageSetlvl19button = [NSString stringWithFormat:@"lvl19butt.png"];
        
        NSString *imageSetlvl19buttonsel = [NSString stringWithFormat:@"lvl19buttsel.png"];
        
        lvl19button = [CCMenuItemImage itemWithNormalImage:imageSetlvl19button
                                             selectedImage:imageSetlvl19buttonsel target:self selector:@selector(gotogamelayer19:)];
        lvl19buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl19buttonsel
                                                selectedImage:imageSetlvl19button target:nil selector:nil];
        
        lvl19button.position = ccp(149,50);
        
        
        
        
        bool checklvl20stat = [[NSUserDefaults standardUserDefaults] boolForKey:@"lvl20comp"];
        
        if (checklvl20stat == true)
        {
            
            
            
            int islevel20Perf = [[NSUserDefaults standardUserDefaults] integerForKey:@"lvl20score"];
            int perfectCount = 12;
            
            
            
            if(islevel20Perf == perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"perfectchecks.png"
                                                                            selectedImage:@"perfectChecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else if (islevel20Perf < perfectCount + 3 && islevel20Perf > perfectCount)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"okaychecks.png"
                                                                            selectedImage:@"okaychecks.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,59);
                [self addChild:perfectCheckmarks z:3];
            }
            else if(islevel20Perf > perfectCount + 2)
            {
                CCMenuItemImage *perfectCheckmarks = [CCMenuItemImage itemWithNormalImage:@"check.png"
                                                                            selectedImage:@"check.png" target:nil selector:nil];
                
                
                perfectCheckmarks.position = ccp(250,59);
                [self addChild:perfectCheckmarks z:3];
                
            }
            
        }

        
        
        
        NSString *imageSetlvl20button = [NSString stringWithFormat:@"lvl20butt.png"];
        
        NSString *imageSetlvl20buttonsel = [NSString stringWithFormat:@"lvl20buttsel.png"];
        
        lvl20button = [CCMenuItemImage itemWithNormalImage:imageSetlvl20button
                                             selectedImage:imageSetlvl20buttonsel target:self selector:@selector(gotogamelayer20:)];
        lvl20buttonSel = [CCMenuItemImage itemWithNormalImage:imageSetlvl20buttonsel
                                                selectedImage:imageSetlvl20button target:nil selector:nil];
        
        lvl20button.position = ccp(208.5,50);
        
        levelSelect = [CCMenu menuWithItems:lvl1button, lvl2button, lvl3button, lvl4button, lvl5button, lvl6button, lvl7button, lvl8button, lvl9button, lvl10button, lvl11button, lvl12button, lvl13button, lvl14button, lvl15button, lvl16button, lvl17button, lvl18button, lvl19button, lvl20button, backButton, nil];

        levelSelect.position = ccp(40, 30);
        
        [self addChild: levelSelect];

           return self;
    }


}

-(void) back: (id)sender
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionSlideInL transitionWithDuration:0.75 scene:[[LevelPackLayer alloc]init]]];
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
-(void) gotogamelayer17:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:17 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer18:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:18 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer19:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:19 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}
-(void) gotogamelayer20:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setInteger:20 forKey:@"level"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:0.5f scene: [[GameLayer alloc] init]]];
    
}


@end
