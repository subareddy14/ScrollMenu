//
//  MobileViewViewController.h
//  ScrollTabBar
//
//  Created by admin on 21/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileViewViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tblView;

@end
