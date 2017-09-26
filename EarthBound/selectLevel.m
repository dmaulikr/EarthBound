//
//  Levels.m
//
//  EarthBound - An Adventure Through Space
//  EarthBound is a game that follows a little alien headed for Earth. His motives for
//  the adventure remain unclear, but the player will understand how difficult it is for
//  an alien to travel backwards in the solar system.
//
//  Created by Kavun Nuggihalli on 7/10/13.
//  Copyright Twizlet.com 2013. All rights reserved.
//

#import "selectLevel.h"
#import "LevelOne.h"
#import "Levels.h"


@implementation selectLevel

int currentlevel;
int unlockedlevel;
int gamecomplete;
int selected;
int locknum;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	selectLevel *layer = [selectLevel node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
-(id) init{
    if( (self=[super init]) ) {
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        currentlevel = [[[NSUserDefaults standardUserDefaults] objectForKey:@"currentLevel"] intValue ];
        unlockedlevel = [[[NSUserDefaults standardUserDefaults] objectForKey:@"unlockedLevel"] intValue ];
        gamecomplete =  [[[NSUserDefaults standardUserDefaults] objectForKey:@"gameComplete"] intValue ];
        selected =  [[[NSUserDefaults standardUserDefaults] objectForKey:@"select"] intValue ];
     
        
        //This is for when your on the level and you see the top half of the screen
        //moving leftwards and the the 1-8 levels
        if (selected == 1) {
        background1 = [CCSprite spriteWithFile:@"Levels/one.png"];
        background1.anchorPoint = ccp(0, 0);
        background1.position = ccp(0, winSize.height/2);
        [self addChild:background1 z:-1];
        
        background2 = [CCSprite spriteWithFile:@"Levels/one.png"];
        background2.anchorPoint = ccp(0, 0);
        background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
        [self addChild:background2 z:-1];
        
        background3 = [CCSprite spriteWithFile:@"Menus/plutoBackGround.png"];
        background3.anchorPoint = ccp(0, 0);
        background3.position = ccp(0, 0);
        [self addChild:background3 z:-1];
        }//Pluto
        if (selected == 2) {
            background1 = [CCSprite spriteWithFile:@"Levels/three.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/three.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/neptuneBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Neptune
        if (selected == 3) {
            background1 = [CCSprite spriteWithFile:@"Levels/UraBacking.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/UraBacking.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/uranusBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Uranus
        if (selected == 4) {
            background1 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/saturnBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Saturn
        if (selected == 5) {
            background1 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/jupiterBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Jupiter
        if (selected == 6) {
            background1 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/marsBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Mars
        if (selected == 7) {
            background1 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background1.anchorPoint = ccp(0, 0);
            background1.position = ccp(0, winSize.height/2);
            [self addChild:background1 z:-1];
            
            background2 = [CCSprite spriteWithFile:@"Levels/one.png"];
            background2.anchorPoint = ccp(0, 0);
            background2.position = ccp([background1 boundingBox].size.width-1, winSize.height/2);
            [self addChild:background2 z:-1];
            
            background3 = [CCSprite spriteWithFile:@"Menus/earthBackGround.png"];
            background3.anchorPoint = ccp(0, 0);
            background3.position = ccp(0, 0);
            [self addChild:background3 z:-1];
        }//Earth
        
        //Levels for Planet Complete!
        if (selected == 1) {
            locknum = 1;
            int locknum2 = 2;
            int locknum3 = 3;
            int locknum4 = 4;
            int locknum5 = 5;
            int locknum6 = 6;
            int locknum7 = 7;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 2) {
            int locknum1 = 9;
            int locknum2 = 10;
            int locknum3 = 11;
            int locknum4 = 12;
            int locknum5 = 13;
            int locknum6 = 14;
            int locknum7 = 15;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 3) {
            int locknum1 = 17;
            int locknum2 = 18;
            int locknum3 = 19;
            int locknum4 = 20;
            int locknum5 = 21;
            int locknum6 = 22;
            int locknum7 = 23;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 4) {
            int locknum1 = 25;
            int locknum2 = 26;
            int locknum3 = 27;
            int locknum4 = 28;
            int locknum5 = 29;
            int locknum6 = 30;
            int locknum7 = 31;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 5) {
            int locknum1 = 33;
            int locknum2 = 34;
            int locknum3 = 35;
            int locknum4 = 36;
            int locknum5 = 37;
            int locknum6 = 38;
            int locknum7 = 39;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 6) {
            int locknum1 = 41;
            int locknum2 = 42;
            int locknum3 = 43;
            int locknum4 = 44;
            int locknum5 = 45;
            int locknum6 = 46;
            int locknum7 = 47;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        if (selected == 7) {
            int locknum1 = 49;
            int locknum2 = 50;
            int locknum3 = 51;
            int locknum4 = 52;
            int locknum5 = 53;
            int locknum6 = 54;
            int locknum7 = 55;
            
            pluto1 = [CCSprite spriteWithFile:@"Levels/p1.png"];
            pluto1.anchorPoint = ccp(0,0);
            pluto1.position = ccp(20, 70);
            pluto1.scale = 2;
            [self addChild:pluto1];
            
            if (unlockedlevel >= locknum1) {
                pluto2 = [CCSprite spriteWithFile:@"Levels/p2.png"];
            }else{
                pluto2 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto2.anchorPoint = ccp(0,0);
            pluto2.position = ccp(pluto1.position.x + [pluto1 boundingBox].size.width + 20, 70);
            pluto2.scale = 2;
            [self addChild:pluto2];
            
            //this is lock number two but planet 3
            
            if (unlockedlevel >= locknum2) {
                pluto3 = [CCSprite spriteWithFile:@"Levels/p3.png"];
            }else{
                pluto3 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto3.anchorPoint = ccp(0,0);
            pluto3.position = ccp(pluto2.position.x + [pluto2 boundingBox].size.width + 20, 70);
            pluto3.scale = 2;
            [self addChild:pluto3];
            
            
            // this is lock number 3 but planet number 4
            
            if (unlockedlevel >= locknum3) {
                pluto4 = [CCSprite spriteWithFile:@"Levels/p4.png"];
            }else{
                pluto4 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto4.anchorPoint = ccp(0,0);
            pluto4.position = ccp(pluto3.position.x + [pluto3 boundingBox].size.width + 20, 70);
            pluto4.scale = 2;
            [self addChild:pluto4];
            
            if (unlockedlevel >= locknum4) {
                pluto5 = [CCSprite spriteWithFile:@"Levels/p5.png"];
            }else{
                pluto5 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto5.anchorPoint = ccp(0,0);
            pluto5.position = ccp(pluto4.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto5.scale = 2;
            [self addChild:pluto5];
            
            if (unlockedlevel >= locknum5) {
                pluto6 = [CCSprite spriteWithFile:@"Levels/p6.png"];
            }else{
                pluto6 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto6.anchorPoint = ccp(0,0);
            pluto6.position = ccp(pluto5.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto6.scale = 2;
            [self addChild:pluto6];
            
            if (unlockedlevel >= locknum6) {
                pluto7 = [CCSprite spriteWithFile:@"Levels/p7.png"];
            }else{
                pluto7 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto7.anchorPoint = ccp(0,0);
            pluto7.position = ccp(pluto6.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto7.scale = 2;
            [self addChild:pluto7];
            
            if (unlockedlevel >= locknum7) {
                pluto8 = [CCSprite spriteWithFile:@"Levels/p8.png"];
            }else{
                pluto8 = [CCSprite spriteWithFile:@"Levels/locked.png"];
            }
            pluto8.anchorPoint = ccp(0,0);
            pluto8.position = ccp(pluto7.position.x + [pluto4 boundingBox].size.width + 20, 70);
            pluto8.scale = 2;
            [self addChild:pluto8];
            
            
        }
        
        
        backmenu = [CCSprite spriteWithFile:@"Menus/Paused/menu.png"];
        backmenu.anchorPoint = ccp(0, 0);
        backmenu.position = ccp(450, 0);
        backmenu.scale = 2;
        [self addChild: backmenu];

        
       
            message = [CCSprite spriteWithFile:@"Levels/message.png"];
            message.anchorPoint = ccp(0, 0);
            message.position = ccp(0, 0);
            message.scaleX = (1136/480)+.4;
            message.scaleY = (640/320);
            [self addChild:message];
        
        
      
    [self schedule:@selector(scroll:) interval:0.05];

        
         [[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
}
    return self;
}
- (void) dealloc {

}
-(void)scroll:(ccTime)dt{
    
    background1.position = ccp(background1.position.x-1, background1.position.y);
    background2.position = ccp(background2.position.x-1, background2.position.y);
    if(background1.position.x <-[background1 boundingBox].size.width){
        background1.position = ccp(background2.position.x+[background2 boundingBox].size.width, background1.position.y);
    }
    if(background2.position.x <- [background2 boundingBox].size.width){
        background2.position = ccp(background1.position.x+[background1 boundingBox].size.width, background2.position.y);
    }
    
}

-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    if(touchLocation.x >= backmenu.position.x && touchLocation.x <= backmenu.position.x+[backmenu boundingBox].size.width && touchLocation.y < backmenu.position.y + [backmenu boundingBox].size.height && touchLocation.y > backmenu.position.y){
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[Levels node]]];
    }
    
    //Levels For Pluto == Complete
    
    if (unlockedlevel >= 0 && selected == 1) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
                 
            int level = 0;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 0) {
            int done = 1;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }

    if (unlockedlevel >= 1 && selected == 1) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
                int level = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 1) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
                [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 2 && selected == 1) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 2;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 2) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 3 && selected == 1) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 3;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 3) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 4 && selected == 1) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 4;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 4) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 5 && selected == 1) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 5;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 5) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 6 && selected == 1) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 6;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 6) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 7 && selected == 1) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 7;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 7) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }

     //Neptune
    if (unlockedlevel >= 8 && selected == 2) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 8;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 8) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
 
    if (unlockedlevel >= 9 && selected == 2) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 9;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 9) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 10 && selected == 2) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 10;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 10) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 11 && selected == 2) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 11;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 11) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 12 && selected == 2) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 12;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 12) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 13 && selected == 2) {
    if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
        
        int level = 13;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        if (unlockedlevel > 13) {
            int done = 1;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
    }
}
    
    if (unlockedlevel >= 14 && selected == 2) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 14;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 14) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 15 && selected == 2) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 15;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 15) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    //Uranus
    if (unlockedlevel >= 16 && selected == 3) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 16;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 16) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 17 && selected == 3) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 17;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 17) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 18 && selected == 3) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 18;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 18) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 19 && selected == 3) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 19;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 19) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 20 && selected == 3) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 20;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 20) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 21 && selected == 3) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 21;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 21) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 22 && selected == 3) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 22;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 22) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 23 && selected == 3) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 23;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 23) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }

    //Saturn
    if (unlockedlevel >= 24 && selected == 4) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 24;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 24) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 25 && selected == 4) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 25;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 25) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 26 && selected == 4) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 26;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 26) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 27 && selected == 4) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 27;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 27) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 28 && selected == 4) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 28;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 28) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 29 && selected == 4) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 29;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 29) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 30 && selected == 4) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 30;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 30) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 31 && selected == 4) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 31;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 31) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    //Jupiter
    if (unlockedlevel >= 32 && selected == 5) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 32;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 32) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 33 && selected == 5) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 33;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 33) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 34 && selected == 5) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 34;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 34) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 35 && selected == 5) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 35;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 35) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 36 && selected == 5) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 36;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 36) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 37 && selected == 5) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 37;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 37) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 38 && selected == 5) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 38;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 38) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 39 && selected == 5) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 39;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 39) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    //Mars
    if (unlockedlevel >= 40 && selected == 6) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 40;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 40) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 41 && selected == 6) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 41;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 41) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 42 && selected == 6) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 42;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 42) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 43 && selected == 6) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 43;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 43) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 44 && selected == 6) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 44;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 44) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 45 && selected == 6) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 45;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 45) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 46 && selected == 6) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 46;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 46) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 47 && selected == 6) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 47;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 47) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    //Earth
    if (unlockedlevel >= 48 && selected == 7) {
        if(touchLocation.x >= pluto1.position.x && touchLocation.x <= pluto1.position.x+[pluto1 boundingBox].size.width && touchLocation.y < pluto1.position.y + [pluto1 boundingBox].size.height && touchLocation.y > pluto1.position.y){
            
            int level = 48;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 48) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 49 && selected == 7) {
        if(touchLocation.x >= pluto2.position.x && touchLocation.x <= pluto2.position.x+[pluto2 boundingBox].size.width && touchLocation.y < pluto2.position.y + [pluto2 boundingBox].size.height && touchLocation.y > pluto2.position.y){
            
            int level = 49;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 49) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 50 && selected == 7) {
        if(touchLocation.x >= pluto3.position.x && touchLocation.x <= pluto3.position.x+[pluto3 boundingBox].size.width && touchLocation.y < pluto3.position.y + [pluto3 boundingBox].size.height && touchLocation.y > pluto3.position.y){
            
            int level = 50;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 50) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 51 && selected == 7) {
        if(touchLocation.x >= pluto4.position.x && touchLocation.x <= pluto4.position.x+[pluto4 boundingBox].size.width && touchLocation.y < pluto4.position.y + [pluto4 boundingBox].size.height && touchLocation.y > pluto4.position.y){
            
            int level = 51;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 51) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 52 && selected == 7) {
        if(touchLocation.x >= pluto5.position.x && touchLocation.x <= pluto5.position.x+[pluto5 boundingBox].size.width && touchLocation.y < pluto5.position.y + [pluto5 boundingBox].size.height && touchLocation.y > pluto5.position.y){
            
            int level = 52;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 52) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 53 && selected == 7) {
        if(touchLocation.x >= pluto6.position.x && touchLocation.x <= pluto6.position.x+[pluto6 boundingBox].size.width && touchLocation.y < pluto6.position.y + [pluto6 boundingBox].size.height && touchLocation.y > pluto6.position.y){
            
            int level = 53;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 53) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 54 && selected == 7) {
        if(touchLocation.x >= pluto7.position.x && touchLocation.x <= pluto7.position.x+[pluto7 boundingBox].size.width && touchLocation.y < pluto7.position.y + [pluto7 boundingBox].size.height && touchLocation.y > pluto7.position.y){
            
            int level = 54;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 54) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }
    
    if (unlockedlevel >= 55 && selected == 7) {
        if(touchLocation.x >= pluto8.position.x && touchLocation.x <= pluto8.position.x+[pluto8 boundingBox].size.width && touchLocation.y < pluto8.position.y + [pluto8 boundingBox].size.height && touchLocation.y > pluto8.position.y){
            
            int level = 55;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            if (unlockedlevel > 55) {
                int done = 1;
                [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:done] forKey:@"alreadyPlayed"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
            
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
        }
    }

        return YES;
}
-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{

}

@end
