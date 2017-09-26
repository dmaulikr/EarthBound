//
//  LevelOne.h
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

@interface LevelOne : CCLayer {
    CGSize size;
    CCSprite *player;
    CCSprite *Laser;
        CCSprite *Spit;
    CCSprite *snail;
    CCSprite *ufo;
    CCSprite *background;
    CCSprite *background2;
    
    CCTMXTiledMap *map;
    CCTMXLayer *bg;
    CCTMXLayer *bgtwo;
    CCTMXLayer *block;
    CCTMXLayer *star;
    CCTMXLayer *water;
    CCTMXObjectGroup *enemy;
    CCTMXObjectGroup *boss;
    CCTMXObjectGroup *power;
    CCSprite *baddie;
    CCTMXObjectGroup *stars;
    
    CCSprite *rightbutton;
    CCSprite *leftbutton;
    CCSprite *shootbutton;
    CCSprite *stopbutton;
    CCSprite *jumpbutton;
    
 
    CCSprite *key;
    CCSprite *hbar;
    
    CCSprite *gate;
    
      CCSprite *resume;
      CCSprite *backmenu;
      CCSprite *restart;
      CCSprite *sound;
      CCSprite *help;
    
    CCTMXObjectGroup *starObjs;
     CCTMXObjectGroup *moveObjs;
    CCSprite *star1;
    CCSprite *star2;
    CCSprite *star3;
    CCSprite *star4;
    CCSprite *star5;
    CCSprite *star6;
    CCSprite *star7;
    CCSprite *star8;
    
    CCSprite *shotrefill1;
    CCSprite *shotrefill2;
    CCSprite *shotrefill3;

    
    CCSprite *platform;
    id  jump;
    int levelon;
    int speed;


}
+(CCScene *) scene;
@end
