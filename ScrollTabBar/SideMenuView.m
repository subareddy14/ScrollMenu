//
//  SideMenuView.m
//  ScrollTabBar
//
//  Created by admin on 20/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import "SideMenuView.h"
#import "SideMenuTableViewCell.h"
#import "MobileViewViewController.h"

@implementation SideMenuView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//worked
 static NSString * cellIdentifer=@"SideMenuCell";
    SideMenuTableViewCell *sideMenuCell=(SideMenuTableViewCell *)[self.tblView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (sideMenuCell==nil) {
        sideMenuCell=[[[NSBundle mainBundle]loadNibNamed:@"SideMenuTableViewCell" owner:self options:nil]objectAtIndex:0];

    }
   sideMenuCell.menuLabel.text=@"Electronics";
    return sideMenuCell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MobileViewViewController * mo=[storyBoard instantiateViewControllerWithIdentifier:@"Mobile"];
    mo.view.frame=CGRectMake(0, 20, self.bounds.size.width/2+20, self.bounds.size.height+20);

    [(UINavigationController *)self.window.rootViewController pushViewController:mo animated:YES];

}

@end
