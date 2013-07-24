//
//  LevelPackLayer.h
//  Tricolors
//
//  Created by Aakash on 7/13/13.
//
//

#import "CCLayer.h"
#import <Foundation/Foundation.h>
#import "StartPageLayer.h"

@interface LevelPackLayer : CCLayerColor
{
    
    
    CCMenuItemImage *lvlpack1;
    CCMenuItemImage *lvlpack2;
    
    CCMenuItem *backButton;
    
    CGSize screenSize;

    
}
@end
