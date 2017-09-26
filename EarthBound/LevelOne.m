//
//  LevelOne.m
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
#import "LevelOne.h"
#import "AppDelegate.h"
#import "Levels.h"
#import "selectLevel.h"
#import "SimpleAudioEngine.h"
#import "AudioToolbox/AudioToolbox.h"
#pragma mark - HelloWorldLayer


// LevelOne implamentation
@implementation LevelOne

int stop = 0,x, y,dir =1,face, jumpable,lives = 6;
int score = 0, timer = 0,posx,posy,sposx,sposy,uposx,uposy;
int isplaying =0,ice = 0,pausenum = 0,jumpwalker = 0;
int alreadyplayed,killer = 0,em1killer = 0,em2killer = 0;
int shotsleft = 0;

NSMutableDictionary *dict,*udict;

CCMenu *pausemenu;
CCSprite * stopMenu, *helpMenu, *xicon, *deathMenu, *winMenu, *startMenu;
CCLabelTTF *posLabel, *timeLabel, *shotsLabel;


// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	LevelOne *layer = [LevelOne node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init{
    if( (self=[super init]) ) {
        
        size = [[CCDirector sharedDirector]winSize];
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        int scalex = (winSize.width / [background boundingBox].size.width);
        int scaley = (winSize.height / [background boundingBox].size.height);
        
        background = [CCSprite spriteWithFile:@"Backgrounds/pluto.png"];
        background.anchorPoint = ccp(0, 0);
        background.position = ccp(0, 0);
        background.scaleX = scalex;
        background.scaleY = scaley;
        [self addChild:background z:-1];
        
        background2 = [CCSprite spriteWithFile:@"Backgrounds/pluto.png"];
        background2.anchorPoint = ccp(0, 0);
        background2.position = ccp([background boundingBox].size.width-1, 0);
        background2.scaleX = scalex;
        background2.scaleY = scaley;
        [self addChild:background2 z:-1];

        //Adding the map to the screen 
        levelon = [[[NSUserDefaults standardUserDefaults] objectForKey:@"currentLevel"] intValue];
        if (levelon  == 0) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"one.tmx"];
        }if (levelon  == 1) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"two.tmx"];
        }
        if (levelon  == 2) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"three.tmx"];
        }
        if (levelon  == 3) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"four.tmx"];
        }
        if (levelon  == 4) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"five.tmx"];
        }
        if (levelon  == 5) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"six.tmx"];
        }
        if (levelon  == 6) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"seven.tmx"];
        }
        if (levelon  == 7) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"eight.tmx"];
        }
        
        //Neptune = DONE
        if (levelon  == 8) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled1.tmx"];
        }
        if (levelon  == 9) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled2.tmx"];
        }
        if (levelon  == 10) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled3.tmx"];
        }
        if (levelon  == 11) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled4.tmx"];
        }
        if (levelon  == 12) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled5.tmx"];
        }
        if (levelon  == 13) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled6.tmx"];
        }
        if (levelon  == 14) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled7.tmx"];
        }
        if (levelon  == 15) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled8.tmx"];
        }
        
        
        //Uranus
        
        if (levelon  == 16) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled9.tmx"];
        }
        if (levelon  == 17) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled10.tmx"];
        }
        if (levelon  == 18) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled11.tmx"];
        }
        if (levelon  == 19) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled12.tmx"];
        }
        if (levelon  == 20) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled13.tmx"];
        }
        if (levelon  == 21) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled14.tmx"];
        }
        if (levelon  == 22) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled15.tmx"];
        }
        if (levelon  == 23) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled16.tmx"];
        }
        
        //saturn
        
        if (levelon  == 24) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled17.tmx"];
        }
        if (levelon  == 25) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled18.tmx"];
        }
        if (levelon  == 26) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled19.tmx"];
        }
        if (levelon  == 27) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled20.tmx"];
        }
        if (levelon  == 28) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled21.tmx"];
        }
        if (levelon  == 29) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled22.tmx"];
        }
        if (levelon  == 30) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled23.tmx"];
        }
        if (levelon  == 31) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled24.tmx"];
        }
        
        //jupiter
        
        if (levelon  == 32) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled25.tmx"];
        }
        if (levelon  == 33) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled26.tmx"];
        }
        if (levelon  == 34) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled27.tmx"];
        }
        if (levelon  == 35) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled28.tmx"];
        }
        if (levelon  == 36) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled29.tmx"];
        }
        if (levelon  == 37) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled30.tmx"];
        }
        if (levelon  == 38) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled31.tmx"];
        }
        if (levelon  == 39) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled32.tmx"];
        }
        
        //mars
        if (levelon  == 40) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled33.tmx"];
        }
        if (levelon  == 41) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled34.tmx"];
        }
        if (levelon  == 42) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled35.tmx"];
        }
        if (levelon  == 43) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled36.tmx"];
        }
        if (levelon  == 44) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled37.tmx"];
        }
        if (levelon  == 45) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled38.tmx"];
        }
        if (levelon  == 46) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled39.tmx"];
        }
        if (levelon  == 47) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled40.tmx"];
        }
        //earth
        if (levelon  == 48) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled41.tmx"];
        }
        if (levelon  == 49) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled42.tmx"];
        }
        if (levelon  == 50) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled43.tmx"];
        }
        if (levelon  == 51) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled44.tmx"];
        }
        if (levelon  == 52) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled45.tmx"];
        }
        if (levelon  == 53) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled46.tmx"];
        }
        if (levelon  == 54) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled47.tmx"];
        }
        if (levelon  == 55) {
            map = [CCTMXTiledMap tiledMapWithTMXFile:@"Tiled48.tmx"];
        }

        
        map.anchorPoint = ccp(0,0);
        map.position = ccp(0,0);
        
        
        int mapscalex =  1136/480;
        int mapscaley = winSize.height / map.boundingBox.size.height;
        
        map.scaleX = mapscalex;
        map.scaleY = mapscaley;
        [self addChild:map];

        //Defineing and adding the layers to the screen
        bg = [map layerNamed:@"bg"];
        bgtwo = [map layerNamed:@"bgtwo"];
        block = [map layerNamed:@"block"];
        star = [map layerNamed:@"star"];
        enemy = [map objectGroupNamed:@"Object"];
        power= [map objectGroupNamed:@"powerObjs"];
        starObjs = [map objectGroupNamed:@"starObjs"];
        moveObjs = [map objectGroupNamed:@"moveObjs"];
        block.visible = 0;
        
        if (face == 1) {
            player = [CCSprite spriteWithFile:@"Character/Run/p1_walk02.png"];
        }else{
            player = [CCSprite spriteWithFile:@"Character/Run/p2_walk02.png"];
        }
        player.anchorPoint = ccp(0, 0);
        player.position = ccp(winSize.width/2, 200);
        player.scale = 2;
        [self addChild:player];
    
        
        //control scheme
        self.isTouchEnabled = YES;
        [[CCTouchDispatcher sharedDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
        
        rightbutton = [CCSprite spriteWithFile:@"Images/rightnew.png"];
        rightbutton.anchorPoint = ccp(0, 0);
        rightbutton.position = ccp(20+([leftbutton boundingBox].size.width)+120, 10);

        
        leftbutton = [CCSprite spriteWithFile:@"Images/leftnew.png"];
        leftbutton.anchorPoint = ccp(0, 0);
        leftbutton.position = ccp(20, 10);
    
        
        
        jumpbutton = [CCSprite spriteWithFile:@"Images/jumpnew.png"];
        jumpbutton.anchorPoint = ccp(0, 0);
        jumpbutton.position = ccp(winSize.width-([jumpbutton boundingBox].size.width)-20, 10);

        
        shootbutton = [CCSprite spriteWithFile:@"Images/shootnew.png"];
        shootbutton.anchorPoint = ccp(0, 0);
        shootbutton.position = ccp(winSize.width/2+100, 10);
  
        
        stopbutton = [CCSprite spriteWithFile:@"Images/pausenew.png"];
        stopbutton.anchorPoint = ccp(0, 0);
        stopbutton.position = ccp(10, winSize.height-([stopbutton boundingBox].size.height)-10);
        

        [self addChild:jumpbutton];
        [self addChild:rightbutton];
        [self addChild:leftbutton];
        [self addChild:shootbutton];
        [self addChild:stopbutton];
        
   
        
        //Score & Time
        posLabel = [CCLabelTTF labelWithString: [NSString stringWithFormat:@"Coins: %d", score] dimensions: CGSizeMake(180, 20)alignment: UITextAlignmentRight fontName:@"Arial" fontSize: 20];
        posLabel.color = ccc3(60,60,60);
        posLabel.anchorPoint = ccp(0, 0);
        posLabel.position = ccp(winSize.width - [posLabel boundingBox].size.width - 10, 300);
        
        timeLabel = [CCLabelTTF labelWithString: [NSString stringWithFormat:@"Time: %d", timer] dimensions: CGSizeMake(180, 20)alignment: UITextAlignmentRight fontName:@"Arial" fontSize: 20];
        timeLabel.color = ccc3(60,60,60);
        timeLabel.anchorPoint = ccp(0, 0);
        timeLabel.position = ccp(winSize.width - [timeLabel boundingBox].size.width - 10, 260);
        
        shotsLabel = [CCLabelTTF labelWithString: [NSString stringWithFormat:@"Shots Left: %d", shotsleft] dimensions: CGSizeMake(180, 20)alignment: UITextAlignmentRight fontName:@"Arial" fontSize: 20];
        shotsLabel.color = ccc3(60,60,60);
        shotsLabel.anchorPoint = ccp(0, 0);
        shotsLabel.position = ccp(winSize.width - [shotsLabel boundingBox].size.width - 10, 280);
        
        [self addChild: posLabel];
        [self addChild: timeLabel];
        [self addChild: shotsLabel];

        
       //Schedules 
       [self schedule:@selector(gravity:) interval:0.001];
       [self schedule:@selector(collision:) interval:0.001];
       [self schedule:@selector(scroll:) interval:0.05];
       [self schedule:@selector(movement:) interval:0.01];
       [self schedule:@selector(time:) interval:1];
       [self schedule:@selector(pausescreen:) interval:.001];
        
       //Platform positions
            NSMutableDictionary *platformone = [moveObjs objectNamed:@"platform1"];
            int distance = [platformone objectForKey:@"move"];
            int ptx = [[platformone valueForKey:@"x"] intValue];
            int pty = [[platformone valueForKey:@"y"] intValue];
        
        if (levelon <= 7) {
            platform = [CCSprite spriteWithFile:@"Images/platforms.png"];
        }
        if (levelon  > 7) {
           platform = [CCSprite spriteWithFile:@"Images/platformsneptune.png"];
        }
        
        
        platform.position = ccp(ptx,pty);
        
        platform.scale = 2;
        
            if (platformone) {
                [self addChild:platform];
            }

            
            id slide = [CCMoveBy actionWithDuration:2 position:ccp(0, 130)];
            id slideback = [CCMoveBy actionWithDuration:2 position:ccp(0, -130)];
            
            CCSequence *moves = [CCSequence actions:slide,slideback, nil];
            id repslide = [CCRepeatForever actionWithAction:moves];
            
            [platform runAction:repslide];

        
        
        //Gate
        NSMutableDictionary *gatedict = [enemy objectNamed:@"Gate"];
        int gx = [[gatedict valueForKey:@"x"]intValue];
        int gy = [[gatedict valueForKey:@"y"]intValue];
        gate = [CCSprite spriteWithFile:@"Images/gate.png"];
        gate.position = ccp(gx, gy);
        gate.scale = 2;
        
        CCAnimation *walkright = [CCAnimation animation];
        [walkright addFrameWithFilename:@"Images/gate3.png"];
        [walkright addFrameWithFilename:@"Images/gate2.png"];
        [walkright addFrameWithFilename:@"Images/gate.png"];
        
        CCAnimate *animation = [CCAnimate actionWithDuration:0.5f animation:walkright restoreOriginalFrame:YES];
        id reprun = [CCRepeatForever actionWithAction:animation];
        
        [gate runAction: reprun];
        if (gatedict) {
                    [self addChild: gate];
        }
        
        
        //Key
        
        NSMutableDictionary *keydict = [moveObjs objectNamed:@"Key"];

        if (keydict) {
            int kx = [[keydict valueForKey:@"x"] intValue];
            int ky = [[keydict valueForKey:@"y"] intValue];
            key = [CCSprite spriteWithFile:@"Images/keyBlue.png"];
            key.position = ccp(kx, ky);
            [self addChild:key z:15];
        }
        
        
        
        //Power ups
        NSMutableDictionary *power1 = [power objectNamed:@"shotrefill1"];
        int srx = [[power1 valueForKey:@"x"] intValue];
        int sry = [[power1 valueForKey:@"y"] intValue];
        shotrefill1 = [CCSprite spriteWithFile:@"Images/refill.png"];
        shotrefill1.position = ccp(srx,sry);
        
        if (power1) {
            [self addChild:shotrefill1];
        }
        
        NSMutableDictionary *power2 = [power objectNamed:@"shotrefill2"];
        int srx2 = [[power2 valueForKey:@"x"] intValue];
        int sry2 = [[power2 valueForKey:@"y"] intValue];
        shotrefill2 = [CCSprite spriteWithFile:@"Images/refill.png"];
        shotrefill2.position = ccp(srx2,sry2);
        
        if (power2) {
            [self addChild:shotrefill2];
        }
        
        
       //StarPosision
        NSMutableDictionary *starone = [starObjs objectNamed:@"star1"];
        int px = [[starone valueForKey:@"x"] intValue];
        int py = [[starone valueForKey:@"y"] intValue];
        star1 = [CCSprite spriteWithFile:@"Images/star.png"];
        star1.position = ccp(px, py);
        [self addChild:star1];
        
        NSMutableDictionary *startwo = [starObjs objectNamed:@"star2"];
        int tpx = [[startwo valueForKey:@"x"] intValue];
        int tpy = [[startwo valueForKey:@"y"] intValue];
        star2 = [CCSprite spriteWithFile:@"Images/star.png"];
        star2.position = ccp(tpx, tpy);
        [self addChild:star2];
        
        NSMutableDictionary *starthree = [starObjs objectNamed:@"star3"];
        int pxt = [[starthree valueForKey:@"x"] intValue];
        int pyt = [[starthree valueForKey:@"y"] intValue];
        star3 = [CCSprite spriteWithFile:@"Images/star.png"];
        star3.position = ccp(pxt, pyt);
        [self addChild:star3];
        
        NSMutableDictionary *starfour = [starObjs objectNamed:@"star4"];
        int fpx = [[starfour valueForKey:@"x"] intValue];
        int fpy = [[starfour valueForKey:@"y"] intValue];
        star4 = [CCSprite spriteWithFile:@"Images/star.png"];
        star4.position = ccp(fpx, fpy);
        [self addChild:star4];
        
        NSMutableDictionary *starfive = [starObjs objectNamed:@"star5"];
        int pxf = [[starfive valueForKey:@"x"] intValue];
        int pyf = [[starfive valueForKey:@"y"] intValue];
        star5 = [CCSprite spriteWithFile:@"Images/star.png"];
        star5.position = ccp(pxf, pyf);
        [self addChild:star5];
        
        NSMutableDictionary *starsix = [starObjs objectNamed:@"star6"];
        int spx = [[starsix valueForKey:@"x"] intValue];
        int spy = [[starsix valueForKey:@"y"] intValue];
        star6 = [CCSprite spriteWithFile:@"Images/star.png"];
        star6.position = ccp(spx, spy);
        [self addChild:star6];
        
        NSMutableDictionary *starseven = [starObjs objectNamed:@"star7"];
        int pxs = [[starseven valueForKey:@"x"] intValue];
        int pys = [[starseven valueForKey:@"y"] intValue];
        star7 = [CCSprite spriteWithFile:@"Images/star.png"];
        star7.position = ccp(pxs, pys);
        [self addChild:star7];
        
        NSMutableDictionary *stareight = [starObjs objectNamed:@"star8"];
        int epx = [[stareight valueForKey:@"x"] intValue];
        int epy = [[stareight valueForKey:@"y"] intValue];
        star8 = [CCSprite spriteWithFile:@"Images/star.png"];
        star8.position = ccp(epx, epy);
        [self addChild:star8];
        
        //Menu
        stopMenu = [CCSprite spriteWithFile:@"Menus/Paused/pausemenu.png"];
        stopMenu.anchorPoint = ccp(0,0);
        stopMenu.position = ccp(0,0);
        [self addChild:stopMenu];
        
        deathMenu = [CCSprite spriteWithFile:@"Menus/Paused/youLost.png"];
        deathMenu.anchorPoint = ccp(0,0);
        deathMenu.position = ccp(0,0);
         deathMenu.visible = 0;
        [self addChild:deathMenu];
        
        startMenu = [CCSprite spriteWithFile:@"Menus/startgamemenu.png"];
        startMenu.anchorPoint = ccp(0,0);
        startMenu.position = ccp(0,0);
        [self addChild:startMenu];
        
        winMenu = [CCSprite spriteWithFile:@"Menus/Paused/youWon.png"];
        winMenu.anchorPoint = ccp(0,0);
        winMenu.position = ccp(0,0);
        [self addChild:winMenu];
        
        dict = [enemy objectNamed:@"EnemyOne"];
        posx = [[dict valueForKey:@"x"] intValue];
        posy = [[dict valueForKey:@"y"] intValue];
        //change the look over time
        
        if (levelon <= 7) {
            baddie = [CCSprite spriteWithFile:@"Enemies/blockerMad.png"];
        }
        if (levelon >= 8 && levelon <= 15) {
           baddie = [CCSprite spriteWithFile:@"Enemies/circleMad.png"];
        }

        baddie.position = ccp(posx, posy);
        baddie.scaleY = 2;
        baddie.scaleX = 2;
        
        if (dict) {
            [self addChild:baddie];
        }
        
        NSMutableDictionary *sdict = [enemy objectNamed:@"EnemyTwo"];
        sposx = [[sdict valueForKey:@"x"] intValue];
        sposy = [[sdict valueForKey:@"y"] intValue];
        snail = [CCSprite spriteWithFile:@"Enemies/flyFly1.png"];
        snail.scaleX = 2;
        snail.scaleY = 2;
        snail.position = ccp(sposx, sposy);

        
        if (sdict) {
            [self addChild:snail];
        }


        id fly = [CCJumpBy actionWithDuration:3 position:ccp(0, 0) height:60 jumps:1];
        id repfly = [CCRepeatForever actionWithAction:fly];
        id sfly = [CCJumpBy actionWithDuration:3 position:ccp(0, 0) height:60 jumps:1];
        id srepfly = [CCRepeatForever actionWithAction:sfly];
        [baddie runAction:repfly];
        [snail runAction:srepfly];
        
        CCAnimation *flap = [CCAnimation animation];
        [flap addFrameWithFilename:@"Enemies/flyFly1.png"];
        [flap addFrameWithFilename:@"Enemies/flyFly2.png"];
        [flap addFrameWithFilename:@"Enemies/flyFly1.png"];
        [flap addFrameWithFilename:@"Enemies/flyFly2.png"];
        [flap addFrameWithFilename:@"Enemies/flyFly1.png"];
        [flap addFrameWithFilename:@"Enemies/flyFly2.png"];
        CCAnimate *anim = [CCAnimate actionWithDuration:1 animation:flap restoreOriginalFrame:NO];
        
        id rep = [CCRepeatForever actionWithAction:anim];
        [snail runAction:rep]; 
        
     
        //pause menu
        resume = [CCSprite spriteWithFile:@"Menus/Paused/resume.png"];
        resume.anchorPoint = ccp(0,0);
        resume.position = ccp(25, 200);
        resume.scaleX = 2;
        resume.scaleY = 2;
        [self addChild:resume];
        
        backmenu = [CCSprite spriteWithFile:@"Menus/Paused/menu.png"];
        backmenu.anchorPoint = ccp(0,0);
        backmenu.position = ccp(25, 150);
        backmenu.scaleX = 2;
        backmenu.scaleY = 2;
        [self addChild:backmenu];
        
        restart = [CCSprite spriteWithFile:@"Menus/Paused/restart.png"];
        restart.anchorPoint = ccp(0,0);
        restart.position = ccp(25, 100);
        restart.scaleX = 2;
        restart.scaleY = 2;
        [self addChild:restart];
        
        sound = [CCSprite spriteWithFile:@"Menus/Paused/soundon.png"];
        sound.anchorPoint = ccp(0,0);
        sound.position = ccp(10, 10);
        sound.scaleX = 2;
        sound.scaleY = 2;
        [self addChild:sound];
        
        help= [CCSprite spriteWithFile:@"Menus/Paused/help.png"];
        help.anchorPoint = ccp(0,0);
        help.position = ccp(80, 10);
        help.scaleX = 2;
        help.scaleY = 2;
        [self addChild:help];
        
        helpMenu = [CCSprite spriteWithFile:@"Menus/Paused/HelpScreen.png"];
        helpMenu.anchorPoint = ccp(0,0);
        helpMenu.position = ccp(0,0);
        help.visible = 0;
        [self addChild:helpMenu];
        
        xicon = [CCSprite spriteWithFile:@"Menus/Paused/xicon.png"];
        xicon.anchorPoint = ccp(0,0);
        xicon.position = ccp(480, 250);
        [self addChild:xicon];
        
        helpMenu.visible = 0;
        xicon.visible = 0;
        deathMenu.visible = 0;
        stopMenu.visible = 0;
        winMenu.visible = 0;
        
        deathMenu.scaleX = mapscalex+.4;
        deathMenu.scaleY = mapscaley;
        winMenu.scaleX = mapscalex+ .4;
        winMenu.scaleY = mapscaley;
        
        
	}
return self;}
- (void) dealloc{
    
	[super dealloc];
}
-(void)movement:(ccTime)dt{
    if (dir == 0 && stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0) {
        if (ice == 1) {
                  map.position = ccp(map.position.x-4, map.position.y);
            platform.position = ccp(platform.position.x-4, platform.position.y);
            gate.position = ccp(gate.position.x-4, gate.position.y);
            star1.position = ccp(star1.position.x-4, star1.position.y);
            key.position = ccp(key.position.x-4, key.position.y);
            star2.position = ccp(star2.position.x-4, star2.position.y);
            star3.position = ccp(star3.position.x-4, star3.position.y);
            star4.position = ccp(star4.position.x-4, star4.position.y);
            star5.position = ccp(star5.position.x-4, star5.position.y);
            star6.position = ccp(star6.position.x-4, star6.position.y);
            star7.position = ccp(star7.position.x-4, star7.position.y);
            star8.position = ccp(star8.position.x-4, star8.position.y);
            shotrefill1.position = ccp(shotrefill1.position.x-4, shotrefill1.position.y);
             shotrefill2.position = ccp(shotrefill2.position.x-4, shotrefill2.position.y);
                     ice = 0;
        }
        if (ice == 0) {
             map.position = ccp(map.position.x-2, map.position.y);
       
        platform.position = ccp(platform.position.x-2, platform.position.y);
          gate.position = ccp(gate.position.x-2, gate.position.y);
            key.position = ccp(key.position.x-2, key.position.y);
        star1.position = ccp(star1.position.x-2, star1.position.y);
        star2.position = ccp(star2.position.x-2, star2.position.y);
        star3.position = ccp(star3.position.x-2, star3.position.y);
        star4.position = ccp(star4.position.x-2, star4.position.y);
        star5.position = ccp(star5.position.x-2, star5.position.y);
        star6.position = ccp(star6.position.x-2, star6.position.y);
        star7.position = ccp(star7.position.x-2, star7.position.y);
        star8.position = ccp(star8.position.x-2, star8.position.y);
             shotrefill1.position = ccp(shotrefill1.position.x-2, shotrefill1.position.y);
            shotrefill2.position = ccp(shotrefill2.position.x-2, shotrefill2.position.y);
        face = 1;
             }
    }
    if (dir == 2 && stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0) {
        if (ice == 1) {
                  map.position = ccp(map.position.x+4, map.position.y);
            key.position = ccp(key.position.x+4, key.position.y);
            platform.position = ccp(platform.position.x+4, platform.position.y);
              gate.position = ccp(gate.position.x+4, gate.position.y);
            star1.position = ccp(star1.position.x+4, star1.position.y);
            star2.position = ccp(star2.position.x+4, star2.position.y);
            star3.position = ccp(star3.position.x+4, star3.position.y);
            star4.position = ccp(star4.position.x+4, star4.position.y);
            star5.position = ccp(star5.position.x+4, star5.position.y);
            star6.position = ccp(star6.position.x+4, star6.position.y);
            star7.position = ccp(star7.position.x+4, star7.position.y);
            star8.position = ccp(star8.position.x+4, star8.position.y);
             shotrefill1.position = ccp(shotrefill1.position.x+4, shotrefill1.position.y);
            shotrefill2.position = ccp(shotrefill2.position.x+4, shotrefill2.position.y);
            ice = 0;
        }
        if (ice == 0) {
            map.position = ccp(map.position.x+2, map.position.y);
       
        platform.position = ccp(platform.position.x+2, platform.position.y);
          gate.position = ccp(gate.position.x+2, gate.position.y);
              key.position = ccp(key.position.x+2, key.position.y);
        star1.position = ccp(star1.position.x+2, star1.position.y);
        star2.position = ccp(star2.position.x+2, star2.position.y);
        star3.position = ccp(star3.position.x+2, star3.position.y);
        star4.position = ccp(star4.position.x+2, star4.position.y);
        star5.position = ccp(star5.position.x+2, star5.position.y);
        star6.position = ccp(star6.position.x+2, star6.position.y);
        star7.position = ccp(star7.position.x+2, star7.position.y);
        star8.position = ccp(star8.position.x+2, star8.position.y);
             shotrefill1.position = ccp(shotrefill1.position.x+2, shotrefill1.position.y);
            shotrefill2.position = ccp(shotrefill2.position.x+2, shotrefill2.position.y);
        face = 0;
             }
    }
    

    

    
}
-(void)scroll:(ccTime)dt{

    if(stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0 && dir == 0){
        //adding to the score
        
 
        
            }
    if(stopMenu.visible == 0&& deathMenu.visible == 0 && winMenu.visible == 0 && dir == 2){
     
    }
    
    
    if (startMenu.visible == 1 || deathMenu.visible == 1 || winMenu.visible == 1) {
        dir = 1;
        shotsleft = 0;
        [player stopAllActions];
    }
    
    
    //Speed of spit thing
    //Make the speed smaller because its actually time dumbass
    
    if (levelon <= 7) {
        speed = 30000;
    }
    if (levelon >= 8 && levelon <= 15) {
        speed = 20000;
    }
    
}
-(void)gravity:(ccTime)dt{
    
bgtwo.visible = 1;
    
    if (stopMenu.visible == 1) {
        deathMenu.visible = 0;
        winMenu.visible = 0;
        startMenu.visible = 0;
        bgtwo.visible = 0;
    }
    if (startMenu.visible == 1) {
        deathMenu.visible = 0;
        winMenu.visible = 0;
        stopMenu.visible = 0;
          bgtwo.visible = 0;
    }
    if (deathMenu.visible == 1) {
        stopMenu.visible = 0;
        winMenu.visible = 0;
        startMenu.visible = 0;
          bgtwo.visible = 0;
    }
    
     platform.position = ccp(platform.position.x + (map.position.x), platform.position.y);
     baddie.position = ccp(baddie.position.x + (map.position.x), baddie.position.y);
     snail.position = ccp(snail.position.x + (map.position.x), snail.position.y);
   
    
    if (dict) {

    if(baddie.position.y < posy+1 && baddie.visible == 1){
        Spit = [CCSprite spriteWithFile:@"Images/spit.png"];
        Spit.anchorPoint  = ccp(0, 0);
        Spit.scaleX = 2;
        Spit.scaleY = 2;
        Spit.position = ccp(baddie.position.x, baddie.position.y);
        

        [self addChild:Spit];
        
        
        CGSize winSize = [CCDirector sharedDirector].winSize;
       
        id shootleft = [CCMoveBy actionWithDuration:speed position:ccp(-9000000,0)];
        
        
        if (Spit.position.x > 0 && baddie.position.x <= player.position.x+winSize.width/2) {
               Spit.visible = 1;
            [Spit runAction: shootleft];
              [[SimpleAudioEngine sharedEngine] playEffect:@"Music/spit.wav"];//play a sound
        }
        if (Spit.position.x < 0) {
            Spit.visible = 0;
        }
    }
    } 
    
    if (player.position.y > 100) {
        jumpable = 0;
    }
    if(stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0){
     player.position = ccp(player.position.x, player.position.y-6);// was -6 normally
    }
    x = ((size.width/2 + (20)) + (-map.position.x))/ map.tileSize.width;
    y = ((map.mapSize.height * map.tileSize.height) - player.position.y) / map.tileSize.height;
    
    
    
}
-(void)collision:(ccTime)dt{    
    CGPoint tileCoord;
    tileCoord = ccp(x, y);
    int tileGid = [block tileGIDAt:tileCoord];
    if (tileGid) {    
        NSDictionary *properties = [map propertiesForGID:tileGid];
        if (properties) {        
            NSString *collision = [properties valueForKey:@"Stand"];
            if (collision && [collision isEqualToString:@"True"]) {            
                player.position = ccp(player.position.x, player.position.y+6);
                jumpable = 1;
            }else{
                jumpable = 0;
            }
        }
        if (properties) {        
            NSString *collision = [properties valueForKey:@"BlockRight"];
            if (collision && [collision isEqualToString:@"True"]) {
                if(face == 1){
                  map.position = ccp(map.position.x+2, map.position.y);
                    platform.position = ccp(platform.position.x+2, platform.position.y);
                      gate.position = ccp(gate.position.x+2, gate.position.y);
                    star1.position = ccp(star1.position.x+2, star1.position.y);
                    key.position = ccp(key.position.x+2, key.position.y);
                    star2.position = ccp(star2.position.x+2, star2.position.y);
                    star3.position = ccp(star3.position.x+2, star3.position.y);
                    star4.position = ccp(star4.position.x+2, star4.position.y);
                    star5.position = ccp(star5.position.x+2, star5.position.y);
                    star6.position = ccp(star6.position.x+2, star6.position.y);
                    star7.position = ccp(star7.position.x+2, star7.position.y);
                    star8.position = ccp(star8.position.x+2, star8.position.y);
                    shotrefill1.position = ccp(shotrefill1.position.x+2, shotrefill1.position.y);
                    shotrefill2.position = ccp(shotrefill2.position.x+2, shotrefill2.position.y);
                    
                }
                if(face == 0){
                    map.position = ccp(map.position.x-2, map.position.y);
                    platform.position = ccp(platform.position.x-2, platform.position.y);
                    gate.position = ccp(gate.position.x-2, gate.position.y);
                           key.position = ccp(key.position.x-2, key.position.y);
                    star1.position = ccp(star1.position.x-2, star1.position.y);
                    star2.position = ccp(star2.position.x-2, star2.position.y);
                    star3.position = ccp(star3.position.x-2, star3.position.y);
                    star4.position = ccp(star4.position.x-2, star4.position.y);
                    star5.position = ccp(star5.position.x-2, star5.position.y);
                    star6.position = ccp(star6.position.x-2, star6.position.y);
                    star7.position = ccp(star7.position.x-2, star7.position.y);
                    star8.position = ccp(star8.position.x-2, star8.position.y);
                    shotrefill1.position = ccp(shotrefill1.position.x-2, shotrefill1.position.y);
                    shotrefill2.position = ccp(shotrefill2.position.x-2, shotrefill2.position.y);
                    
                }
                 player.position = ccp(player.position.x, player.position.y+6);
                jumpable = true;
            }
        }
        if (properties) {        
            NSString *collision = [properties valueForKey:@"Win"];
            if (collision && [collision isEqualToString:@"True"]) {
                       jumpable = 1;
                
                player.position = ccp(player.position.x, player.position.y+6); 
                if (score == 8) {
                    alreadyplayed = [[[NSUserDefaults standardUserDefaults] objectForKey:@"alreadyPlayed"] intValue ];
                    
                    if (alreadyplayed == 0) {
                        int nailedit = 1;
                        
                        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:nailedit] forKey:@"gameComplete"];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        winMenu.visible = 1;
                    }else{
                        int nailedit = 0;
                        
                        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:nailedit] forKey:@"alreadyPlayed"];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        winMenu.visible = 1;
                    }
                    
                }
   
            }
        }
        if (properties) {        
            NSString *collision = [properties valueForKey:@"Water"];
            if (collision && [collision isEqualToString:@"True"]) {
                deathMenu.visible = 1;
                score = 0;
                [[SimpleAudioEngine sharedEngine] playEffect:@"Music/dead.wav"];//play a sound
                timer = 0;
                 player.position = ccp(player.position.x, player.position.y+6);
            }
        }
        if (properties) {        
            NSString *collision = [properties valueForKey:@"Ice"];
            if (collision && [collision isEqualToString:@"True"]) {
                player.position = ccp(player.position.x, player.position.y+6); 
                ice = 1;
                jumpable = 1;
            }
        }
    }
    
    //Gate control collision
    if (CGRectIntersectsRect(player.boundingBox, gate.boundingBox)  && gate.visible == 1) {
        deathMenu.visible = 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/dead.wav"];//play a sound
    }
    if (CGRectIntersectsRect(player.boundingBox, key.boundingBox)  && gate.visible == 1 && key.visible == 1) {
        gate.visible = 0;
        key.visible = 0;
    }
    if (CGRectIntersectsRect(player.boundingBox, Spit.boundingBox) && Spit.visible == 1 && stopMenu.visible == 0) {                
         deathMenu.visible = 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/dead.wav"];//play a sound
    }
    if (CGRectIntersectsRect(player.boundingBox, baddie.boundingBox) && baddie.visible == 1 && stopMenu.visible == 0) {
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/dead.wav"];//play a sound
        player.visible = 0;
        deathMenu.visible = 1;
    }
    if (CGRectIntersectsRect(player.boundingBox, snail.boundingBox) && snail.visible == 1  && stopMenu.visible == 0) {                
        player.visible = 0;
       deathMenu.visible = 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/dead.wav"];//play a sound
    }
    if (CGRectIntersectsRect(Laser.boundingBox, Spit.boundingBox)  && stopMenu.visible == 0 & Laser.visible == 1) {
        Spit.visible = 0;
        Laser.visible = 0;
    }

    //Power collision detection
    if (CGRectIntersectsRect(player.boundingBox, shotrefill1.boundingBox)&& shotrefill1.visible == 1) {
        shotrefill1.visible = 0;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/crunch.wav"];//play a sound
        shotsleft = shotsleft + 4;
        [shotsLabel setString:[NSString stringWithFormat:@"Shots Left: %d", shotsleft ]];
    }
    if (CGRectIntersectsRect(player.boundingBox, shotrefill2.boundingBox)&& shotrefill2.visible == 1) {
        shotrefill2.visible = 0;
        shotsleft = shotsleft + 4;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/crunch.wav"];//play a sound
        [shotsLabel setString:[NSString stringWithFormat:@"Shots Left: %d", shotsleft ]];
    }
    
    //star collision detection
    if (CGRectIntersectsRect(player.boundingBox, star1.boundingBox)&& star1.visible == 1) {                
        star1.visible = 0;
        score = score + 1;
         [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score ]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star2.boundingBox)&& star2.visible == 1) {
        star2.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star3.boundingBox)&& star3.visible == 1) {                
        star3.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star4.boundingBox)&& star4.visible == 1) {                
        star4.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star5.boundingBox)&& star5.visible == 1) {                
        star5.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star6.boundingBox)&& star6.visible == 1) {                
        star6.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star7.boundingBox)&& star7.visible == 1) {                
        star7.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, star8.boundingBox)&& star8.visible == 1) {                
        star8.visible = 0;
        score = score + 1;
        [[SimpleAudioEngine sharedEngine] playEffect:@"Music/coinsound.wav"];//play a sound
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
    }
    if (CGRectIntersectsRect(player.boundingBox, platform.boundingBox) && player.position.y > platform.position.y) {                
       player.position = ccp(player.position.x, platform.position.y +20);
         jumpable = 1;
    }
    
    
    //Figthting baddies
    if (CGRectIntersectsRect(baddie.boundingBox, Laser.boundingBox)  && stopMenu.visible == 0 && Laser.visible == 1 && em1killer < 3 && baddie.visible == 1) {
        em1killer ++;
        Laser.visible = 0;
    }
    if (em1killer >= 3) {
        baddie.visible = 0;
         [[SimpleAudioEngine sharedEngine] playEffect:@"Music/enemydead.wav"];//play a sound
        em1killer = 0;
    }
    if (CGRectIntersectsRect(snail.boundingBox, Laser.boundingBox)  && stopMenu.visible == 0 && Laser.visible == 1 && em2killer < 2 && snail.visible == 1) {
        em2killer ++;
        Laser.visible = 0;
    }
    if (em2killer >= 2) {
        snail.visible = 0;
         [[SimpleAudioEngine sharedEngine] playEffect:@"Music/enemydead.wav"];//play a sound
        em2killer = 0;
    }
    

}
-(void)time:(id)time{
    if (stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0) {
          timer = timer +1;
          [timeLabel setString:[NSString stringWithFormat:@"Time: %d",timer]];
    }
}
-(void)pausemethod:(id)sender{
    if (deathMenu.visible == 0 && winMenu.visible == 0) {
          stopMenu.visible = 1;
    }
}
-(void)pausescreen:(ccTime)dt{   
    if (stopMenu.visible == 0) {
        resume.visible = 0;
        backmenu.visible = 0;
        restart.visible = 0;
        sound.visible = 0;
        help.visible = 0;

    }
    if (stopMenu.visible == 1) {
        resume.visible = 1;
        backmenu.visible = 1;
        restart.visible = 1;
        sound.visible = 1;
        help.visible = 1;
    }
    
    if( pausenum == 1){
        stopMenu.visible =0;
        pausenum = 0;
    }

    if(pausenum == 2){
    [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:2 scene:[Levels node]]];
    pausenum = 0;
    }
    
    if(pausenum == 3){
        score =0;
        [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
        
        timer = 0; 
        [timeLabel setString:[NSString stringWithFormat:@"Time: %d", timer]];
        
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.004 scene:[LevelOne node]]];
        helpMenu.visible = 0;
        xicon.visible = 0;        
        pausenum = 0;
        
    }
    if(pausenum == 4){    
        [[SimpleAudioEngine sharedEngine] pauseBackgroundMusic];
        isplaying =1;
        pausenum = 0;
        
        if (isplaying == 2) {
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"Music/AngryRobot.mp3"];
            isplaying = 0;
            pausenum = 0;
        }
    }
    if(pausenum == 5){
        helpMenu.visible = 1;
        xicon.visible = 1;
    }
    if(pausenum == 6){
        helpMenu.visible = 0;
        xicon.visible = 0;
        pausenum = 0;
    }

}
-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    
    CCAnimation *walkright = [CCAnimation animation];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk01.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk02.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk03.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk04.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk05.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk06.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk07.png"];
    [walkright addFrameWithFilename:@"Character/Run/p1_walk08.png"];

    [walkright addFrameWithFilename:@"Character/Run/p1_walk02.png"];
    
    CCAnimate *animation = [CCAnimate actionWithDuration:0.5f animation:walkright restoreOriginalFrame:YES];
   id reprun = [CCRepeatForever actionWithAction:animation];
    
    
    CCAnimation *walkleft = [CCAnimation animation];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk01.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk02.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk03.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk04.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk05.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk06.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk07.png"];
    [walkleft addFrameWithFilename:@"Character/Run/p2_walk08.png"];
    
    CCAnimate *animationleft = [CCAnimate actionWithDuration:0.5f animation:walkleft restoreOriginalFrame:YES];
    id reprunleft = [CCRepeatForever actionWithAction:animationleft];
    
    if(touchLocation.x >= rightbutton.position.x && touchLocation.x <= rightbutton.position.x+[rightbutton boundingBox].size.width && touchLocation.y < rightbutton.position.y + [rightbutton boundingBox].size.height && touchLocation.y > rightbutton.position.y){
     
        if (dir == 1) {
            dir = 0;
            [player stopAction: reprunleft];
            [player runAction:reprun];
            [[SimpleAudioEngine sharedEngine] playEffect:@"Music/click.wav"];//play a soun

        }else {
            dir = 1;
        }
    }else{
        Nil;
    }
    
    if(touchLocation.x >= leftbutton.position.x && touchLocation.x <= leftbutton.position.x+[leftbutton boundingBox].size.width && touchLocation.y < leftbutton.position.y + [leftbutton boundingBox].size.height && touchLocation.y > leftbutton.position.y){
    
        if (dir == 1) {
        dir = 2;
        [player stopAction: reprun];
            [player runAction:reprunleft];
          [[SimpleAudioEngine sharedEngine] playEffect:@"Music/click.wav"];//play a sound
        }else {
            dir = 1;
        }
    }
    
    
    if(touchLocation.x >= jumpbutton.position.x && touchLocation.x <= jumpbutton.position.x+[jumpbutton boundingBox].size.width +10 && touchLocation.y < jumpbutton.position.y + [jumpbutton boundingBox].size.height+10 && touchLocation.y > jumpbutton.position.y){
   
       jump = [CCMoveBy actionWithDuration:.30 position:ccp(0, 125)]; //normal .20
        jumpwalker = 1;
        
        if(stopMenu.visible == 0 && deathMenu.visible == 0 && winMenu.visible == 0 && jumpable == 1) {
            [player runAction:jump];
            [[SimpleAudioEngine sharedEngine] playEffect:@"Music/jump.wav"];//play a sound
            jumpable = 0;
        }
        
    }
    
    if(touchLocation.x >= shootbutton.position.x && touchLocation.x <= shootbutton.position.x+[shootbutton boundingBox].size.width && touchLocation.y < shootbutton.position.y + [shootbutton boundingBox].size.height && touchLocation.y > shootbutton.position.y){
      
        if (shotsleft > 0) {
        CGSize winSize = [CCDirector sharedDirector].winSize;
        Laser = [CCSprite spriteWithFile:@"Images/rock.png"];
            Laser.scale = 2;
        
        
        id shootright = [CCMoveBy actionWithDuration:.5 position:ccp(winSize.width,0)];
        id shootleft = [CCMoveBy actionWithDuration:.5 position:ccp(-winSize.width,0)];
        
        Laser.anchorPoint = ccp(0, 0);
        Laser.position = ccp(player.position.x+[player boundingBox].size.width, player.position.y+[player boundingBox].size.height/2);
        [self addChild:Laser];
        Laser.visible = 1;
        
        if(Laser.position.x<winSize.width && face == 1){
            Laser.position = ccp(player.position.x+[player boundingBox].size.width, player.position.y+[player boundingBox].size.height/2);
            [Laser runAction: shootright];
            [[SimpleAudioEngine sharedEngine] playEffect:@"Music/throw.wav"];//play a sound
        }
        if(Laser.position.x > 0 && face == 0){
            Laser.position = ccp(player.position.x-10, player.position.y+[player boundingBox].size.height/2);
            [Laser runAction: shootleft];
            [[SimpleAudioEngine sharedEngine] playEffect:@"Music/throw.wav"];//play a sound
        }
        }

    }
    

    
    if(touchLocation.x >= stopbutton.position.x && touchLocation.x <= stopbutton.position.x+[stopbutton boundingBox].size.width && touchLocation.y < stopbutton.position.y + [stopbutton boundingBox].size.height && touchLocation.y > stopbutton.position.y){
        if (deathMenu.visible == 0 && winMenu.visible == 0) {
            stopMenu.visible = 1;
        }
    }
    
    
    //pause menu controls
    if (startMenu.visible == 1) {
        if(touchLocation.x >= startMenu.position.x && touchLocation.x <= startMenu.position.x+[startMenu boundingBox].size.width && touchLocation.y < startMenu.position.y + [startMenu boundingBox].size.height && touchLocation.y > startMenu.position.y){
            score = 0;
            timer = 0;
             [posLabel setString:[NSString stringWithFormat:@"Coins: %d",score]];
            startMenu.visible = 0;
        }
    }
    
    if (stopMenu.visible ==1 && helpMenu.visible == 0) {
        if(touchLocation.x >= resume.position.x && touchLocation.x <= resume.position.x+[resume boundingBox].size.width && touchLocation.y < resume.position.y + [resume boundingBox].size.height && touchLocation.y > resume.position.y){
            pausenum = 1;
        }
        if(touchLocation.x >= backmenu.position.x && touchLocation.x <= backmenu.position.x+[backmenu boundingBox].size.width && touchLocation.y < backmenu.position.y + [backmenu boundingBox].size.height && touchLocation.y > backmenu.position.y){
            pausenum = 2;
        }
        if(touchLocation.x >= restart.position.x && touchLocation.x <= restart.position.x+[restart boundingBox].size.width && touchLocation.y < restart.position.y + [restart boundingBox].size.height && touchLocation.y > restart.position.y){
            pausenum = 3;
        }
        if(touchLocation.x >= sound.position.x && touchLocation.x <= sound.position.x+[sound boundingBox].size.width && touchLocation.y < sound.position.y + [sound boundingBox].size.height && touchLocation.y > sound.position.y){
            pausenum = 4;
            if (isplaying == 1) {
                isplaying = 2;
            }
        }
        if(touchLocation.x >= help.position.x && touchLocation.x <= help.position.x+[help boundingBox].size.width && touchLocation.y < help.position.y + [help boundingBox].size.height && touchLocation.y > help.position.y){
            pausenum = 5;
        }
        
    }
    
    if (helpMenu.visible == 1) {
        if(touchLocation.x >= xicon.position.x && touchLocation.x <= xicon.position.x+[xicon boundingBox].size.width && touchLocation.y < xicon.position.y + [xicon boundingBox].size.height && touchLocation.y > xicon.position.y){
            pausenum = 6;
        }
    }
    if (deathMenu.visible == 1) {
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[LevelOne node]]];
    }
    if (winMenu.visible == 1) {
        [[CCDirector sharedDirector]replaceScene:[CCTransitionFade transitionWithDuration:.5 scene:[Levels node]]];
    }

    return YES;
}
-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInView: [touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    

    
    if(touchLocation.x >= rightbutton.position.x && touchLocation.x <= rightbutton.position.x+[rightbutton boundingBox].size.width && touchLocation.y < rightbutton.position.y + [rightbutton boundingBox].size.height && touchLocation.y > rightbutton.position.y){
        dir = 1;
        [player stopAllActions];
    }else if(touchLocation.x >= leftbutton.position.x && touchLocation.x <= leftbutton.position.x+[leftbutton boundingBox].size.width && touchLocation.y < leftbutton.position.y + [leftbutton boundingBox].size.height && touchLocation.y > leftbutton.position.y){
          dir = 1;
        [player stopAllActions];
    }else if(touchLocation.x >= jumpbutton.position.x && touchLocation.x <= jumpbutton.position.x+[jumpbutton boundingBox].size.width && touchLocation.y < jumpbutton.position.y + [jumpbutton boundingBox].size.height && touchLocation.y > jumpbutton.position.y){
         jumpwalker = 0;
        
    }else if(touchLocation.x >= shootbutton.position.x && touchLocation.x <= shootbutton.position.x+[shootbutton boundingBox].size.width && touchLocation.y < shootbutton.position.y + [shootbutton boundingBox].size.height && touchLocation.y > shootbutton.position.y){
        if (shotsleft > 0) {
            shotsleft = shotsleft - 1;
            [shotsLabel setString:[NSString stringWithFormat:@"Shots Left: %d", shotsleft]];
        }
    }
    
    
    //Prevents Drag and Run
   if(touchLocation.x >= rightbutton.position.x + [rightbutton boundingBox].size.width){
        
    
    }else{
            dir = 1;
            [player stopAllActions];
        }
    
    
    
    
    

}


@end


















