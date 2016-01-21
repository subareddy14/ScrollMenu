//
//  MobileViewViewController.m
//  ScrollTabBar
//
//  Created by admin on 21/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import "MobileViewViewController.h"
#import "SideMenuSubTableViewCell.h"

@interface MobileViewViewController ()

@end

@implementation MobileViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame= CGRectMake(0, 20, self.view.bounds.size.width/2+20, self.view.bounds.size.height+20);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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

    static NSString * cellIdentifer=@"SubMenuCell";
    SideMenuSubTableViewCell *sideMenuSubCell=(SideMenuSubTableViewCell *)[self.tblView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (sideMenuSubCell==nil) {
        sideMenuSubCell=[[[NSBundle mainBundle]loadNibNamed:@"SideMenuSubTableViewCell" owner:self options:nil]objectAtIndex:0];

    }
    sideMenuSubCell.subMenulbl.text=@"Mobiles";
    return sideMenuSubCell;
    
}

@end
