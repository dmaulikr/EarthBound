//
//  Levels.m
//  EarthBound
//
//  Created by Kavun Nuggihalli on 7/19/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Planets.h"
#import "LevelOne.h"
#import "HelloWorldLayer.h"
#import "selectLevel.h"


@implementation Planets


int dir;
int level;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Planets *layer = [Planets node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
-(id) init{
    if( (self=[super init])){
        
        int planetscale = 2;
    
        backmenu = [CCSprite spriteWithFile:@"Levels/backmenu.png"];
        backmenu.anchorPoint = ccp(0, 0);
        backmenu.position = ccp(240, 5);
        [self addChild: backmenu];
        
        background = [CCSprite spriteWithFile:@"Menus/PlanetMenu.png"];
        background.anchorPoint = ccp(0, 0);
        background.position = ccp(-180, 0);
        [self addChild:background];
        
        background2 = [CCSprite spriteWithFile:@"Backgrounds/space.png"];
        background2.anchorPoint = ccp(0, 0);
        background2.position = ccp(0, 0);
        [self addChild:background2 z:-1];
        
        background3 = [CCSprite spriteWithFile:@"Backgrounds/space.png"];
        background3.anchorPoint = ccp(0, 0);
        background3.position = ccp([background boundingBox].size.width-1, 0);
        [self addChild:background3 z:-1];
        
        plu = [CCSprite spriteWithFile:@"Menus/pluto.png"];
        plu.anchorPoint = ccp(0, 0);
        plu.position = ccp(0, 100);
        plu.scaleY = planetscale;
        plu.scaleX = planetscale;
        [self addChild:plu];
        
        nep = [CCSprite spriteWithFile:@"Menus/neptunelocked.png"];
        nep.anchorPoint = ccp(0, 0);
        nep.position = ccp([plu boundingBox].size.width + 50,100);
        [self addChild:nep];

    }
    return self;
}
- (void) dealloc {
    [super dealloc];
}
@end
