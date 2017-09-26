//
//  AppDelegate.h
//
//  EarthBound - An Adventure Through Space
//  EarthBound is a game that follows a little alien headed for Earth. His motives for
//  the adventure remain unclear, but the player will understand how difficult it is for
//  an alien to travel backwards in the solar system.
//
//  Created by Kavun Nuggihalli on 7/10/13.
//  Copyright Twizlet.com 2013. All rights reserved.
//
// ------------------------------------------ Twizlet Credentials -------------------------------------------------
//
// Authors - Kavun Nuggihalli, Sound Empire, Kenney Vleugels
// Graphics - Twizlet.com <Kavun Nuggihalli>
// Sound FX (Non inclusive of Background Music) - Created on FL Studio <Kavun Nuggihalli>
// Libraries Used - Cocos2D
// Published Code - Copyright © Twizlet.com - All Rights Reserved

// Background Music - Sound Empire
// Background Music Website - http://www.soundempire.com/
// Conditions of Use / License Agreement
/* I understand and agree that this is an original audio collection belonging to Sound Empire, Inc. 
 (www.soundempire.com) I will not re-post, resell, or bundle this sound collection (sound fx and music loops), 
 in part or in full. I understand and agree this is not permissible.

 (For example, I cannot add any of these sounds to the free area on my site and offer it to users for download.
 The same holds true if I want to include any of these sounds/files on a CD-ROM). I understand that I may use 
 this as part of my own personal or commercial project, such as: web site, software, online game, etc., so long 
 as I am using it for utilitarian purposes, and am not offering it as a standalone download.

 I understand and agree that if I wish to re-post or resell any part of this collection, I will need explicit
 written permission from Sound Empire, Inc.

 I understand and agree that international copyright laws protect the entire contents of this site. The owners of 
 the copyrights are Sound Empire, Inc., its affiliates, and/or other third party licensors. In other words, I cannot 
 include these files in my copyright or claim to have created them myself. Minor modifications to Sound Empire, Inc. 
 sound files merely creates a derivative of the original work, which would still mean that Sound Empire, Inc.. retains 
 copyright over the derivative, as well as to the original underlying work.

 I understand that I will be responsible to pay for any damages caused to Sound Empire, Inc. as a result of the violation.

 I agree to use the sound files in my own projects and the projects of my clients. However, I will NOT include this content 
 from SoundEmpire.com in a library for resale or redistribution, without Sound Empire, Inc.'s express prior written approval.

Copyright © SoundEmpire.com - All Rights Reserved*/

// Character Graphics / Planet Graphics - Kenney Vleugels
// (www.kenny.nl)

// ###############################################################################
//
// Platformer graphics (Deluxe) by Kenney Vleugels (www.kenney.nl)
//
// ------------------------------

// License (CC0)
// http://creativecommons.org/publicdomain/zero/1.0/

// You may use these graphics in personal and commercial projects.
// Credit (Kenney or www.kenney.nl) would be nice but is not mandatory.

// ###############################################################################

// ---------------- Public Domain Dedication --------------------
//
//The person who associated a work with this deed has dedicated the work to the public domain
//by waiving all of his or her rights to the work worldwide under copyright law, including all
// related and neighboring rights, to the extent allowed by law.

//End

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface AppController : NSObject <UIApplicationDelegate, CCDirectorDelegate>
{
	UIWindow *window_;
	UINavigationController *navController_;

	CCDirectorIOS	*director_;							// weak ref
}

@property (nonatomic, retain) UIWindow *window;
@property (readonly) UINavigationController *navController;
@property (readonly) CCDirectorIOS *director;

@end
