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

#import "Levels.h"
#import "LevelOne.h"
#import "HelloWorldLayer.h"
#import "selectLevel.h"


@implementation Levels


int dir;
int level;
float rate = .05;
int currentlevel;
int unlockedlevel;
int gamecomplete;


+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Levels *layer = [Levels node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
-(id) init{
    if( (self=[super init]) ) {
        
        size = [[CCDirector sharedDirector]winSize];
        
        currentlevel = [[[NSUserDefaults standardUserDefaults] objectForKey:@"currentLevel"] intValue ];
        unlockedlevel = [[[NSUserDefaults standardUserDefaults] objectForKey:@"unlockedLevel"] intValue ];
        gamecomplete =  [[[NSUserDefaults standardUserDefaults] objectForKey:@"gameComplete"] intValue ];
        
        if (gamecomplete == 1) {
           
            int thelevel = currentlevel +1;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:thelevel] forKey:@"unlockedLevel"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            int notcomplete = 0;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:notcomplete] forKey:@"gameComplete"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        backmenu = [CCSprite spriteWithFile:@"Menus/Paused/menu.png"];
        backmenu.position = ccp(winSize.width/2, 10);
        backmenu.scale = 2;
        [self addChild: backmenu];
        
        background = [CCSprite spriteWithFile:@"Menus/PlanetMenu.png"];
        background.anchorPoint = ccp(0, 0);
        background.position = ccp(-220, 0);
        background.scaleX = (1136/480)+.4;
        background.scaleY = (640/320);
        [self addChild:background];
        
        background2 = [CCSprite spriteWithFile:@"Backgrounds/space.png"];
        background2.anchorPoint = ccp(0, 0);
        background2.position = ccp(0, 0);
        background2.scaleX = (1136/480)+.4;
        background2.scaleY = (640/320);
        [self addChild:background2 z:-1];
        
        background3 = [CCSprite spriteWithFile:@"Backgrounds/space.png"];
        background3.anchorPoint = ccp(0, 0);
        background3.position = ccp([background boundingBox].size.width-1, 0);
        background3.scaleX = (1136/480)+.4;
        background3.scaleY = (640/320);
        [self addChild:background3 z:-1];
        
        plu = [CCSprite spriteWithFile:@"Menus/pluto.png"];
        plu.anchorPoint = ccp(0, 0);
        plu.position = ccp(0, 100);
        plu.scale = 2;
        [self addChild:plu];
        
        
        //Make sure your refresh first
       
        if (unlockedlevel >= 8) {
               nep = [CCSprite spriteWithFile:@"Menus/neptune.png"];
        }else {
               nep = [CCSprite spriteWithFile:@"Menus/neptuneLocked.png"];
        }
        nep.anchorPoint = ccp(0, 0);
        nep.position = ccp([plu boundingBox].size.width + 50,100);
        nep.scale = 2;
        [self addChild:nep];
        
        
        if (unlockedlevel >= 16) {
            ura = [CCSprite spriteWithFile:@"Menus/uranus.png"];
        }else {
            ura = [CCSprite spriteWithFile:@"Menus/uranusLocked.png"];
        }
        ura.anchorPoint = ccp(0, 0);
        ura.position = ccp(nep.position.x+[nep boundingBox].size.width + 50,100);
        ura.scale = 2;
        [self addChild:ura];
        
        if (unlockedlevel >= 24) {
            sat = [CCSprite spriteWithFile:@"Menus/saturn.png"];
        }else {
            sat = [CCSprite spriteWithFile:@"Menus/saturnLocked.png"];
        }
        sat.anchorPoint = ccp(0, 0);
        sat.position = ccp(ura.position.x+[ura boundingBox].size.width + 50,100);
        sat.scale = 2;
        [self addChild:sat];
        
        if (unlockedlevel >= 32) {
              jup = [CCSprite spriteWithFile:@"Menus/jupiter.png"];
        }else {
            jup = [CCSprite spriteWithFile:@"Menus/jupiterLocked.png"];
        }
        jup.anchorPoint = ccp(0, 0);
        jup.position = ccp(sat.position.x+[sat boundingBox].size.width + 50,100);
        jup.scale = 2;
        [self addChild:jup];
        
        if (unlockedlevel >= 40) {
              mar = [CCSprite spriteWithFile:@"Menus/mars.png"];
        }else {
              mar = [CCSprite spriteWithFile:@"Menus/marsLocked.png"];
        }
        mar.anchorPoint = ccp(0, 0);
        mar.position = ccp(jup.position.x+[jup boundingBox].size.width + 50,100);
        mar.scale = 2;
        [self addChild:mar];
        
        if (unlockedlevel >= 48) {
            ear = [CCSprite spriteWithFile:@"Menus/earth.png"];
        }else {
            ear = [CCSprite spriteWithFile:@"Menus/earthLocked.png"];
        }
        ear.anchorPoint = ccp(0, 0);
        ear.position = ccp(mar.position.x+[mar boundingBox].size.width + 50,100);
        ear.scale = 2;
        [self addChild:ear];
        

             ven  = [CCSprite spriteWithFile:@"Menus/venusLocked.png"];
        ven.anchorPoint = ccp(0, 0);
        ven.position = ccp(ear.position.x+[ear boundingBox].size.width + 50,100);
        ven.scale = 2;
        [self addChild:ven];
        
        mer  = [CCSprite spriteWithFile:@"Menus/mercuryLocked.png"];
        mer.anchorPoint = ccp(0, 0);
        mer.position = ccp(ven.position.x+[ven boundingBox].size.width + 50,100);
        mer.scale = 2;
        [self addChild:mer];
        
        sun  = [CCSprite spriteWithFile:@"Menus/sunLocked.png"];
        sun.anchorPoint = ccp(0, 0);
        sun.position = ccp(mer.position.x+[mer boundingBox].size.width + 50,100);
        sun.scale = 2;
        [self addChild:sun];

         [[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
        
        rightbutton = [CCSprite spriteWithFile:@"Images/rightbutton1.png"];
        rightbutton.anchorPoint = ccp(0, 0);
        rightbutton.position = ccp(winSize.width-(2*[rightbutton boundingBox].size.width)-20, 5);
        rightbutton.scale = 2;
        
        leftbutton = [CCSprite spriteWithFile:@"Images/leftbutton1.png"];
        leftbutton.anchorPoint = ccp(0, 0);
        leftbutton.position = ccp(10, 5);
        leftbutton.scale = 2;
        
        [self addChild:rightbutton];
        [self addChild:leftbutton];
        
        //schedules
               [self schedule:@selector(scroll:) interval:0.05];
         [self schedule:@selector(backgroundscroll:) interval:0.05];
            [self schedule:@selector(rate:) interval:0.05];
        
    }
    return self;
}
- (void) dealloc {
    [super dealloc];
}
-(void)rate:(ccTime)dt{
    
 rate = rate + .2;
    
    if (dir == 1) {
        rate  = 0;
    }
    
}
-(void)scroll:(ccTime)dt{
  CGSize winSize = [CCDirector sharedDirector].winSize;
    if(dir == 0 && ven.position.x > 0){
        plu.position = ccp(plu.position.x -4*rate, plu.position.y);
        nep.position = ccp(nep.position.x -4*rate, nep.position.y);
        ura.position = ccp(ura.position.x -4*rate, ura.position.y);
        sat.position = ccp(sat.position.x -4*rate, sat.position.y);
        jup.position = ccp(jup.position.x -4*rate, jup.position.y);
        mar.position = ccp(mar.position.x -4*rate, jup.position.y);
        ear.position = ccp(ear.position.x -4*rate, jup.position.y);
        ven.position = ccp(ven.position.x -4*rate, jup.position.y);
        mer.position = ccp(mer.position.x -4*rate, jup.position.y);
        sun.position = ccp(sun.position.x -4*rate, jup.position.y);
        
    }
    if(dir == 2 && sat.position.x < winSize.width){
        plu.position = ccp(plu.position.x +4*rate, plu.position.y);
        nep.position = ccp(nep.position.x +4*rate, nep.position.y);
        ura.position = ccp(ura.position.x +4*rate, ura.position.y);
        sat.position = ccp(sat.position.x +4*rate, sat.position.y);
        jup.position = ccp(jup.position.x +4*rate, jup.position.y);
        mar.position = ccp(mar.position.x +4*rate, jup.position.y);
        ear.position = ccp(ear.position.x +4*rate, jup.position.y);
        ven.position = ccp(ven.position.x +4*rate, jup.position.y);
        mer.position = ccp(mer.position.x +4*rate, jup.position.y);
        sun.position = ccp(sun.position.x +4*rate, jup.position.y);
    }

}
-(void)backgroundscroll:(ccTime)dt{
        //adding to the score
        
        background2.position = ccp(background2.position.x-.5, background2.position.y);
        background3.position = ccp(background3.position.x-.5, background3.position.y);
        if(background2.position.x <-[background2 boundingBox].size.width){
            background2.position = ccp(background3.position.x+[background3 boundingBox].size.width, background2.position.y);
        }
        if(background3.position.x <- [background3 boundingBox].size.width){
            background3.position = ccp(background2.position.x+[background2 boundingBox].size.width, background3.position.y);
        }
        
}
-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    if(touchLocation.x >= plu.position.x && touchLocation.x <= plu.position.x+[plu boundingBox].size.width && touchLocation.y < plu.position.y + [plu boundingBox].size.height && touchLocation.y > plu.position.y){
        int select = 1;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
        [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
    }
    
    
    if (unlockedlevel >= 8) {
    if(touchLocation.x >= nep.position.x && touchLocation.x <= nep.position.x+[nep boundingBox].size.width && touchLocation.y < nep.position.y + [nep boundingBox].size.height && touchLocation.y > nep.position.y){
            int select = 2;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    if (unlockedlevel >= 16) {
        if(touchLocation.x >= ura.position.x && touchLocation.x <= ura.position.x+[ura boundingBox].size.width && touchLocation.y < ura.position.y + [ura boundingBox].size.height && touchLocation.y > ura.position.y){
            int select = 3;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    if (unlockedlevel >= 24) {
        if(touchLocation.x >= sat.position.x && touchLocation.x <= sat.position.x+[sat boundingBox].size.width && touchLocation.y < sat.position.y + [sat boundingBox].size.height && touchLocation.y > sat.position.y){
            int select = 4;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    if (unlockedlevel >= 32) {
        if(touchLocation.x >= jup.position.x && touchLocation.x <= jup.position.x+[jup boundingBox].size.width && touchLocation.y < jup.position.y + [jup boundingBox].size.height && touchLocation.y > jup.position.y){
            int select = 5;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    if (unlockedlevel >= 40) {
        if(touchLocation.x >= mar.position.x && touchLocation.x <= mar.position.x+[mar boundingBox].size.width && touchLocation.y < mar.position.y + [mar boundingBox].size.height && touchLocation.y > mar.position.y){
            int select = 6;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    if (unlockedlevel >= 48) {
        if(touchLocation.x >= ear.position.x && touchLocation.x <= ear.position.x+[ear boundingBox].size.width && touchLocation.y < ear.position.y + [ear boundingBox].size.height && touchLocation.y > ear.position.y){
            int select = 7;
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:select] forKey:@"select"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[selectLevel node]]];
        }
    }
    
    
    if(touchLocation.x >= backmenu.position.x && touchLocation.x <= backmenu.position.x+[backmenu boundingBox].size.width && touchLocation.y < backmenu.position.y + [backmenu boundingBox].size.height && touchLocation.y > backmenu.position.y){
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[HelloWorldLayer node]]];
    }
    
    
    if(touchLocation.x >= rightbutton.position.x && touchLocation.x <= rightbutton.position.x+[rightbutton boundingBox].size.width && touchLocation.y < rightbutton.position.y + [rightbutton boundingBox].size.height && touchLocation.y > rightbutton.position.y){dir = 0;
    }
    
    if(touchLocation.x >= leftbutton.position.x && touchLocation.x <= leftbutton.position.x+[leftbutton boundingBox].size.width && touchLocation.y < leftbutton.position.y + [leftbutton boundingBox].size.height && touchLocation.y > leftbutton.position.y){dir = 2;
  
    }
    
    
    return YES;
}
-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{
    dir = 1;
}



@end
