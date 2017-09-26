//
//  Settings.h
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

@interface Settings : CCLayer {

    CCSprite *deletedata;
    
    CCSprite *unlockdata;
    
        CCSprite *backmenu;
    
    CCSprite *bg;
}

+(CCScene *) scene;

@end
