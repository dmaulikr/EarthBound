//
//  HelloWorldLayer.h
//
//  EarthBound - An Adventure Through Space
//  EarthBound is a game that follows a little alien headed for Earth. His motives for
//  the adventure remain unclear, but the player will understand how difficult it is for
//  an alien to travel backwards in the solar system.
//
//  Created by Kavun Nuggihalli on 7/10/13.
//  Copyright Twizlet.com 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer 
{
    CGSize size;
    CCSprite *background;
    CCSprite *background2;
    CCSprite *startmenu;
    CCSprite *start;
    CCSprite *help;
    CCSprite *settings;
 
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
