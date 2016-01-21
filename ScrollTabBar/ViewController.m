//
//  ViewController.m
//  ScrollTabBar
//
//  Created by admin on 19/01/16.
//  Copyright © 2016 DreamOrbit. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"
#import "SecondView.h"
#import "ThirdView.h"
#import "FourthView.h"
#import "FifthView.h"
#import "SixthView.h"
#import "SideMenuView.h"
#import "AppDelegate.h"
#import "SideMenuViewController.h"

@interface ViewController ()<UIScrollViewDelegate,UIGestureRecognizerDelegate>
{
    UIScrollView * scView;
    UIScrollView * mainScView;
    UIPageControl *pageControl;
    NSArray *menuItems;
    NSString *isTapped;
    UIView *backgrView;
    SideMenuView * sideMenuView;
    SideMenuViewController * sample;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isTapped=@"NO";
    self.navigationController.navigationBarHidden=true;
    menuItems=@[@"Recharge",@"Mobile & Accessories",@"Electronics",@"Mens Fashion's",@"Women Fashion's",@"Sports & Health",@"Home & Kitchen",@"Bus Tickets",@"Hotels",@"Automotive",@"Stationary",@"Deals",@"Books"];
    

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [self createScrollMenu];
}


-(void)createScrollMenu
{
     scView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 65, self.view.bounds.size.width, 30)];
  [scView setBackgroundColor:[UIColor greenColor]];
    mainScView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 95 , self.view.bounds.size.width, self.view.bounds.size.height-23)];
    mainScView.delegate=self;
    scView.delegate=self;

    mainScView.showsHorizontalScrollIndicator=NO;
    scView.showsHorizontalScrollIndicator=NO;
    mainScView.showsVerticalScrollIndicator=NO;
    scView.showsVerticalScrollIndicator=NO;
    UIButton *button;
    int x=0;
      int x1=0;
    for (int i=0; i<[menuItems count]; i++) {
         button=[UIButton buttonWithType:UIButtonTypeCustom];

         [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
         [button setFrame:CGRectMake(x, 0, self.view.frame.size.width/3-5, 30)];
         [button setTag:i];
         button.titleLabel.numberOfLines = 1;
         button.titleLabel.adjustsFontSizeToFitWidth = YES;
         button.titleLabel.lineBreakMode = NSLineBreakByClipping;

         button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button setTitle:[NSString stringWithFormat:@"%@",[menuItems objectAtIndex:i]] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(menuTapped:) forControlEvents:UIControlEventTouchUpInside];
        [scView addSubview:button];



        UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(x, 28, self.view.frame.size.width/3-5, 6)];
        [lbl setBackgroundColor:[UIColor clearColor]];
        [lbl setTag:i];
          [UIView animateWithDuration:1 animations:^{
           [scView addSubview:lbl];
         }];



        switch (i) {
            case 0:
            {
                FirstView * firstView=[[[NSBundle mainBundle]loadNibNamed:@"FirstView" owner:self options:nil]objectAtIndex:0];
                firstView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                firstView.tag=i;
                [mainScView addSubview:firstView];
            }
                break;
            case 1:
            {

                SecondView * secondView=[[[NSBundle mainBundle]loadNibNamed:@"SecondView" owner:self options:nil]objectAtIndex:0];
                secondView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                 secondView.tag=i;
                [mainScView addSubview:secondView];
            }
                break;

            case 2:
            {

                ThirdView * thirdView=[[[NSBundle mainBundle]loadNibNamed:@"ThirdView" owner:self options:nil]objectAtIndex:0];
                thirdView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                  thirdView.tag=i;
                [mainScView addSubview:thirdView];
            }
                break;
            case 3:
            {

                FourthView * fourthView=[[[NSBundle mainBundle]loadNibNamed:@"FourthView" owner:self options:nil]objectAtIndex:0];
                fourthView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                fourthView.tag=i;
                [mainScView addSubview:fourthView];
            }
                break;
            case 4:
            {

                FifthView * fifthView=[[[NSBundle mainBundle]loadNibNamed:@"FifthView" owner:self options:nil]objectAtIndex:0];
                fifthView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                fifthView.tag=i;
                [mainScView addSubview:fifthView];
            }
                break;

            case 5:
            {

                SixthView * sixthView=[[[NSBundle mainBundle]loadNibNamed:@"SixthView" owner:self options:nil]objectAtIndex:0];
                sixthView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                sixthView.tag=i;
                [mainScView addSubview:sixthView];
            }
                break;

                
            default:
            {

                SixthView * sixthView=[[[NSBundle mainBundle]loadNibNamed:@"SixthView" owner:self options:nil]objectAtIndex:0];
                sixthView.frame=CGRectMake(x1, 0, self.view.bounds.size.width, self.view.bounds.size.height-22);
                sixthView.tag=i;
                [mainScView addSubview:sixthView];
            }
                break;
        }


        if(i == 0)

      {
        [lbl setBackgroundColor:[UIColor redColor]];

      }

        [scView setBackgroundColor:[UIColor clearColor]];
        x+= self.view.frame.size.width/3+5;
        x1+=self.view.bounds.size.width;
       
        
    }

    [scView setContentSize:CGSizeMake([menuItems count]*button.bounds.size.width+[menuItems count]*10, scView.frame.size.height)];
    [mainScView setContentSize:CGSizeMake([menuItems count]*self.view.bounds.size.width, self.view.bounds.size.height-30)];
    mainScView.pagingEnabled=TRUE;
    [self.view addSubview:scView];
    [self.view addSubview:mainScView];

}

-(IBAction)menuTapped:(UIButton *)sender
{

    if (sender.tag!=0 && sender.tag!=[menuItems count]-1)

    {

        float animationDuration = 0.3;

        [UIView animateWithDuration:animationDuration animations:^{
            [scView setContentOffset:CGPointMake(sender.frame.origin.x-130, 0)];
        }];

    }

    [mainScView setContentOffset:CGPointMake(sender.tag*self.view.bounds.size.width, 0)];
    [self addLabel:sender];
}


-(void)addLabel:(UIButton *)x
{
    for (UIView* subView in scView.subviews)
    {
        if ([subView isMemberOfClass:[UILabel class]])
        {
            [subView setBackgroundColor:[UIColor clearColor]];
            if(x.tag == subView.tag)
            {
                [subView setBackgroundColor:[UIColor redColor]];
            }
        }
    }

}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{

    if (scrollView==mainScView) {


    CGFloat pageWidth = mainScView.frame.size.width;
    pageControl.currentPage = (mainScView.contentOffset.x + pageWidth / 2) / pageWidth;

    if (((mainScView.contentOffset.x + pageWidth / 2) / pageWidth-0.5)!=0 && ((mainScView.contentOffset.x + pageWidth / 2) / pageWidth-0.5)!=[menuItems count]-1)
    {
        float animationDuration = 0.3;
        [UIView animateWithDuration:animationDuration animations:^{
            [scView setContentOffset:CGPointMake(((mainScView.contentOffset.x + pageWidth / 2) / pageWidth-1.5)*130, 0)];
        }];
        
    }
    else  if(((mainScView.contentOffset.x + pageWidth / 2) / pageWidth-0.5)==0)
    {
        float animationDuration = 0.3;
        [UIView animateWithDuration:animationDuration animations:^{
            [scView setContentOffset:CGPointMake(0, 0)];
        }];
    }

    

    for (UIView* subView in scView.subviews)

    {
        if ([subView isMemberOfClass:[UILabel class]])
        {
            [subView setBackgroundColor:[UIColor clearColor]];
            if(((mainScView.contentOffset.x + pageWidth / 2) / pageWidth-0.5)== subView.tag)
            {
                [subView setBackgroundColor:[UIColor redColor]];
            }
        }
    }
        }

}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
        [scView setContentOffset: CGPointMake(scView.contentOffset.x,0)];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)leftBarButtonTapped:(id)sender {


    if ([isTapped isEqualToString:@"NO"]) {
        isTapped=@"YES";
        [UIView animateWithDuration:0.5 animations:^{
            [self.view setFrame:CGRectMake(self.view.bounds.size.width/2+10, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        }];

        backgrView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        backgrView.backgroundColor = [UIColor blackColor];
        backgrView.alpha = 0.6;
        [[[[UIApplication sharedApplication] delegate] window] addSubview:backgrView];

        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
        tapGestureRecognizer.delegate=self;
        [backgrView addGestureRecognizer:tapGestureRecognizer];
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        sample = [storyBoard instantiateViewControllerWithIdentifier:@"side"];
        sample.view.frame=CGRectMake(0, 20, self.view.bounds.size.width/2+20, self.view.bounds.size.height+20);
        [[[[UIApplication sharedApplication] delegate] window] addSubview:sample.view];


       // [self addChildViewController:sample];
//        sideMenuView=[[[NSBundle mainBundle]loadNibNamed:@"SideMenuView" owner:self options:nil]objectAtIndex:0];
//        sideMenuView.frame=CGRectMake(0, 20, self.view.bounds.size.width/2+20, self.view.bounds.size.height+20);
//        sideMenuView.backgroundColor=[UIColor clearColor];
//        [[[[UIApplication sharedApplication] delegate] window] addSubview:sideMenuView];
        //[backgrView addSubview:sideMenuView];

    }
    else if ([isTapped isEqualToString:@"YES"])
    {
        isTapped=@"NO";
      [UIView animateWithDuration:0.1 animations:^{
            [self.view setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
            //[sideMenuView removeFromSuperview];
           [sample.view removeFromSuperview];
            [backgrView removeFromSuperview];
       }];

    }

}

- (void) handleTapFrom: (UITapGestureRecognizer *)recognizer
{
      isTapped=@"NO";
    [UIView animateWithDuration:0.1 animations:^{
        [self.view setFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        //[sideMenuView removeFromSuperview];
         [sample.view removeFromSuperview];
        [backgrView removeFromSuperview];
    }];
}
@end
