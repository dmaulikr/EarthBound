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
#import "HelloWorldLayer.h"
#import "LevelOne.h"
#import "Settings.h"


@implementation Settings
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	Settings *layer = [Settings node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}
-(id) init{
    if( (self=[super init]) ) {
        
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        bg = [CCSprite spriteWithFile:@"Menus/SettingsMenu.png"];
        bg.position = ccp(winSize.width/2, winSize.height/2);
        [self addChild:bg];
        
        deletedata = [CCSprite spriteWithFile:@"Levels/deletedata.png"];
        deletedata.anchorPoint = ccp(0,0);
        deletedata.position = ccp(winSize.width- [deletedata boundingBox].size.width - 130,100);
        deletedata.scale = 2;
        [self addChild: deletedata];
        
        /*unlockdata = [CCSprite spriteWithFile:@"Levels/locked.png"];
        unlockdata.anchorPoint = ccp(0,0);
        unlockdata.position = ccp(10,160);
        unlockdata.scale = 2;
        [self addChild: unlockdata];*/

        
        backmenu = [CCSprite spriteWithFile:@"Menus/Paused/menu.png"];
        backmenu.anchorPoint = ccp(0, 0);
        backmenu.position = ccp(winSize.width- [deletedata boundingBox].size.width - 150, -10);
        backmenu.scale = 2;
        [self addChild: backmenu];
           
        
        /*NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SettingsList" ofType:@"plist"];
            NSMutableDictionary* plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
        
            int musicoff = 1;
            
            [plistDict setValue:[NSNumber numberWithInt:musicoff] forKey:@"Music"];
            [plistDict writeToFile:filePath atomically: YES];
            
        
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SettingsList" ofType:@"plist"];
        NSMutableDictionary* plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
        
        int soundoff = 1;
        
        [plistDict setValue:[NSNumber numberWithInt:soundoff] forKey:@"Sound"];
        [plistDict writeToFile:filePath atomically: YES]; */

        
        [[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
    }
    return self;
}
- (void) dealloc {
    
}

-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    if(touchLocation.x >= backmenu.position.x && touchLocation.x <= backmenu.position.x+[backmenu boundingBox].size.width && touchLocation.y < backmenu.position.y + [backmenu boundingBox].size.height && touchLocation.y > backmenu.position.y){
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[HelloWorldLayer node]]];
    }
    
    if(touchLocation.x >= deletedata.position.x && touchLocation.x <= deletedata.position.x+[deletedata boundingBox].size.width && touchLocation.y < deletedata.position.y + [deletedata boundingBox].size.height && touchLocation.y > deletedata.position.y){
        
        int level = 0;
        
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"planetSelected"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"unlockedLevel"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"gameComplete"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"alreadyPlayed"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }
    
    if(touchLocation.x >= unlockdata.position.x && touchLocation.x <= unlockdata.position.x+[unlockdata boundingBox].size.width && touchLocation.y < unlockdata.position.y + [unlockdata boundingBox].size.height && touchLocation.y > unlockdata.position.y){
        
        int level = 10; //use this to do god mode but make sure its avaliable
        
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"currentLevel"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"planetSelected"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"unlockedLevel"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"gameComplete"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"alreadyPlayed"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }

    
    return YES;
}
-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{
    
}
@end
