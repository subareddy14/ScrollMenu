//
//  SideMenuView.h
//  ScrollTabBar
//
//  Created by admin on 20/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideMenuView : UIView<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tblView;

@end
