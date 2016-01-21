//
//  AppDelegate.h
//  ScrollTabBar
//
//  Created by admin on 19/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;


@property (strong, nonatomic) ViewController *firstViewController;

@end

