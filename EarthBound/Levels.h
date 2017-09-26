//
//  Levels.h
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

@interface Levels : CCLayer {
    CGSize size;
    CCSprite *background;
    CCSprite *background2;
    CCSprite *background3;
    CCSprite *sun;
    CCSprite *mer;
    CCSprite *ven;
    CCSprite *ear;
    CCSprite *mar;
    CCSprite *jup;
    CCSprite *sat;
    CCSprite *ura;
    CCSprite *nep;
    CCSprite *plu;
    
    CCSprite *rightbutton;
    CCSprite *leftbutton;
    
      CCSprite *backmenu;

}


+(CCScene *) scene;

@end
