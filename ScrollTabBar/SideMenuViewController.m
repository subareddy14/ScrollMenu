//
//  SideMenuViewController.m
//  ScrollTabBar
//
//  Created by admin on 21/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import "SideMenuViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=TRUE;

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

    [self performSegueWithIdentifier:@"one" sender:self];
//    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    MobileViewViewController * mo=[storyBoard instantiateViewControllerWithIdentifier:@"Mobile"];
//
//
//    mo.view.frame=CGRectMake(0, 20, self.view.bounds.size.width/2+20, self.view.bounds.size.height+20);
//    //[self addChildViewController:mo];
//   [self.navigationController pushViewController:mo animated:YES];
    //[self.view.window.rootViewController presentViewController:mo animated:YES completion:nil];
     //[[self navigationController] pushViewController:mo animated:YES];
    //[self.view.window.navigationController pushViewController:mo animated:YES];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"one"]) {
        MobileViewViewController *asker = segue.destinationViewController;
    }
}

@end
