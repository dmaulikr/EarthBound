//
//  Levels.h
//  EarthBound
//
//  Created by Kavun Nuggihalli on 7/19/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Planets : CCLayer {
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
