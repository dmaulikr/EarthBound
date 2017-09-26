//
//  selectLevel.h
//
//  EarthBound - An Adventure Through Space
//  EarthBound is a game that follows a little alien headed for Earth. His motives for
//  the adventure remain unclear, but the player will understand how difficult it is for
//  an alien to travel backwards in the solar system.
//
//  Created by Kavun Nuggihalli on 7/10/13.
//  Copyright Twizlet.com 2013. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface selectLevel : CCLayer {
    
    int theplanet;
    
    CCSprite *menu;
    CCSprite *backmenu;
    CCSprite *message;
    
    CCSprite *pluto1;
    CCSprite *pluto2;
    CCSprite *pluto3;
    CCSprite *pluto4;
    CCSprite *pluto5;
    CCSprite *pluto6;
    CCSprite *pluto7;
    CCSprite *pluto8;
    CCSprite *pluto9;
    CCSprite *pluto10;
    
    CCSprite *neptune1;
    CCSprite *neptune2;
    CCSprite *neptune3;
    CCSprite *neptune4;
    
    CCSprite *background1;
    CCSprite *background2;
    CCSprite *background3;


}

+(CCScene *) scene;

@end
