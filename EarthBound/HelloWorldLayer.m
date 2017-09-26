//
//  HelloWorldLayer.m
//
//  EarthBound - An Adventure Through Space
//  EarthBound is a game that follows a little alien headed for Earth. His motives for
//  the adventure remain unclear, but the player will understand how difficult it is for
//  an alien to travel backwards in the solar system.
//
//  Created by Kavun Nuggihalli on 7/10/13.
//  Copyright Twizlet.com 2013. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "Levels.h"
#import "Settings.h"
#import "LevelOne.h"
#import "SimpleAudioEngine.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation HelloWorldLayer
int helpnum;
CCSprite *helpme, *xicon;


// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init{
    if( (self=[super init]) ) {
        
        size = [[CCDirector sharedDirector]winSize];
        
        int levelon = [[[NSUserDefaults standardUserDefaults] objectForKey:@"currentlevel"] intValue ];
        int level = 0;
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"gameComplete"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:level] forKey:@"alreadyPlayed"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        
        background = [CCSprite spriteWithFile:@"Menus/mainbackground.png"];
        background.anchorPoint = ccp(0, 0);
        background.position = ccp(0, 0);
        [self addChild:background z:-1];
        
        background2 = [CCSprite spriteWithFile:@"Menus/mainbackground.png"];
        background2.anchorPoint = ccp(0, 0);
        background2.position = ccp([background boundingBox].size.width-1, 0);
        [self addChild:background2 z:-1];
        
        startmenu = [CCSprite spriteWithFile:@"Menus/MainMenu.png"];
        startmenu.position = ccp(winSize.width/2, winSize.height/2);
        [self addChild:startmenu];
        
        start = [CCSprite spriteWithFile:@"Menus/start.png"];
        start.position = ccp(winSize.width/2, 190);
        int startscalex = 1.5;
        int startscaley = 1.5;
        start.scaleX = startscalex;
        start.scaleY = startscaley;
        [self addChild:start];
        
        help = [CCSprite spriteWithFile:@"Menus/help.png"];
        help.position = ccp(winSize.width/2, 130);
        help.scaleX = startscalex;
        help.scaleY = startscaley;
        [self addChild:help];
        
        settings = [CCSprite spriteWithFile:@"Menus/settings.png"];
        settings.position = ccp(winSize.width/2, 80);
        settings.scaleX = startscalex;
        settings.scaleY = startscaley;
        [self addChild:settings];
        
        [[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
		
        [self schedule:@selector(scroll:) interval:0.05];
        [self schedule:@selector(checker:) interval:0.05];
        
        [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"Music/GameMusic.mp3"];
        [[SimpleAudioEngine sharedEngine] setBackgroundMusicVolume:0.1f];
        
        helpme = [CCSprite spriteWithFile:@"Menus/Paused/HelpScreen.png"];
        helpme.anchorPoint = ccp(0,0);
        helpme.position = ccp(0,0);
        [self addChild:helpme];
        
        xicon = [CCSprite spriteWithFile:@"Menus/Paused/xicon.png"];
        xicon.anchorPoint = ccp(0,0);
        xicon.position = ccp(480, 250);
        [self addChild:xicon];
        

        xicon.visible = 0;
        helpme.visible = 0;
	}
    return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc{

	[super dealloc];
}

-(void)scroll:(ccTime)dt{

        background.position = ccp(background.position.x-1, background.position.y);
        background2.position = ccp(background2.position.x-1, background2.position.y);
        if(background.position.x <-[background boundingBox].size.width){
            background.position = ccp(background2.position.x+[background2 boundingBox].size.width, background.position.y);
        }
        if(background2.position.x <- [background2 boundingBox].size.width){
            background2.position = ccp(background.position.x+[background boundingBox].size.width, background2.position.y);
        }
        
}
-(void)checker:(ccTime)dt{
    if (helpnum == 1) {
        helpme.visible = 1;
        xicon.visible = 1;
        helpnum = 0;
    }
}
-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    helpme.visible = 0;
    xicon.visible = 0;
    
if (helpme.visible == 0) {
    if(touchLocation.x >= start.position.x && touchLocation.x <= start.position.x+[start boundingBox].size.width && touchLocation.y < start.position.y + [start boundingBox].size.height && touchLocation.y > start.position.y){
         [[CCDirector sharedDirector]replaceScene:[CCTransitionFadeTR transitionWithDuration:.5 scene:[Levels node]]];

        }
    
    if(touchLocation.x >= help.position.x && touchLocation.x <= help.position.x+[help boundingBox].size.width && touchLocation.y < help.position.y + [help boundingBox].size.height && touchLocation.y > help.position.y){
        helpnum = 1;
    }
    
    if(touchLocation.x >= settings.position.x && touchLocation.x <= settings.position.x+[settings boundingBox].size.width && touchLocation.y < settings.position.y + [settings boundingBox].size.height && touchLocation.y > settings.position.y){
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFadeTR transitionWithDuration:.5 scene:[Settings node]]];
        //[[CCDirector sharedDirector]replaceScene:[CCTransitionPageTurn
    }
    
}
    
    return YES;
}
-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{
    
}
@end
