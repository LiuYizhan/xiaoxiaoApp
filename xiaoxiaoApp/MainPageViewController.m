//
//  ViewController.m
//  xiaoxiaoApp
//
//  Created by 刘毅展 on 15/9/15.
//  Copyright (c) 2015年 刘毅展. All rights reserved.
//

#import "MainPageViewController.h"
#import "AppDelegate.h"
#import "MyLayout.h"

@interface MainPageViewController ()

@end

@implementation MainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"笑校";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(0, 0, 20, 18);
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(openOrCloseLeftList) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:menuBtn];
    
    MyLinearLayout *LinearLayout1 = [MyLinearLayout new];
    LinearLayout1.backgroundColor = [UIColor colorWithRed:215/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    LinearLayout1.wrapContentHeight  = YES;
    LinearLayout1.orientation = LVORIENTATION_VERT;
    LinearLayout1.gravity = MGRAVITY_VERT_CENTER;
    
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 120)];
    v1.backgroundColor = [UIColor colorWithRed:215/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    v1.marginGravity = MGRAVITY_CENTER;
    v1.leftMargin = v1.rightMargin = 0;
    
    
    [LinearLayout1 addSubview:v1];
    
    UIButton *b1 = [UIButton buttonWithType:UIButtonTypeCustom];
    b1.frame = CGRectMake(50, 0, 120, 120);
    b1.layer.cornerRadius = 10;
    [b1 setTitle:@"课" forState:UIControlStateNormal];
    [b1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b1 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b1.titleLabel.font = [UIFont systemFontOfSize:100];
    [v1 addSubview:b1];
    
    UIButton *b2 = [UIButton buttonWithType:UIButtonTypeCustom];
    b2.frame = CGRectMake(205, 0, 120, 120);
    b2.layer.cornerRadius = 10;
    [b2 setTitle:@"友" forState:UIControlStateNormal];
    [b2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b2 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b2.titleLabel.font = [UIFont systemFontOfSize:100];
    [v1 addSubview:b2];
    
    
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 120)];
    v2.backgroundColor = [UIColor colorWithRed:215/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    v2.leftMargin = v2.rightMargin = 0 ;v2.topMargin = 30;
    [LinearLayout1 addSubview:v2];
    
    UIButton *b3 = [UIButton buttonWithType:UIButtonTypeCustom];
    b3.frame = CGRectMake(50, 0, 120, 120);
    b3.layer.cornerRadius = 10;
    [b3 setTitle:@"商" forState:UIControlStateNormal];
    [b3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b3 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b3.titleLabel.font = [UIFont systemFontOfSize:100];
    [v2 addSubview:b3];
    
    UIButton *b4 = [UIButton buttonWithType:UIButtonTypeCustom];
    b4.frame = CGRectMake(205, 0, 120, 120);
    b4.layer.cornerRadius = 10;
    [b4 setTitle:@"课" forState:UIControlStateNormal];
    [b4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b4 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b4.titleLabel.font = [UIFont systemFontOfSize:100];
    [v2 addSubview:b4];
    
    
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 120)];
    v3.backgroundColor = [UIColor colorWithRed:215/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    v3.leftMargin = v3.rightMargin = 0;v3.topMargin = 30;
    [LinearLayout1 addSubview:v3];
    
    UIButton *b5 = [UIButton buttonWithType:UIButtonTypeCustom];
    b5.frame = CGRectMake(50, 0, 120, 120);
    b5.layer.cornerRadius = 10;
    [b5 setTitle:@"课" forState:UIControlStateNormal];
    [b5 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b5 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b5.titleLabel.font = [UIFont systemFontOfSize:100];
    [v3 addSubview:b5];
    
    UIButton *b6 = [UIButton buttonWithType:UIButtonTypeCustom];
    b6.frame = CGRectMake(205, 0, 120, 120);
    b6.layer.cornerRadius = 10;
    [b6 setTitle:@"课" forState:UIControlStateNormal];
    [b6 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [b6 setBackgroundColor:[UIColor colorWithRed:87/255.0 green:160/255.0 blue:255/255.0 alpha:1]];
    b6.titleLabel.font = [UIFont systemFontOfSize:100];
    [v3 addSubview:b6];
    
    self.view = LinearLayout1;
    
    
    
}


- (void) openOrCloseLeftList
{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.LeftSlideVC setPanEnabled:YES];
}

@end