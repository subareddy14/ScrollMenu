//
//  RechargeView.m
//  ScrollTabBar
//
//  Created by admin on 21/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import "RechargeView.h"
#import "SideMenuSubTableViewCell.h"
@implementation RechargeView

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

    static NSString * cellIdentifer=@"SubMenuCell";
    SideMenuSubTableViewCell *sideMenuSubCell=(SideMenuSubTableViewCell *)[self.tblView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (sideMenuSubCell==nil) {
        sideMenuSubCell=[[[NSBundle mainBundle]loadNibNamed:@"SideMenuSubTableViewCell" owner:self options:nil]objectAtIndex:0];

    }
    sideMenuSubCell.subMenulbl.text=@"Mobiles";
    return sideMenuSubCell;
    
}

@end
