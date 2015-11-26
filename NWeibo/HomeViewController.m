//
//  HomeViewController.m
//  NWeibo
//
//  Created by 睿付 on 15/11/26.
//  Copyright © 2015年 furui. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController()

@end

@implementation HomeViewController
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.view setBackgroundColor:[UIColor greenColor]];
    [self initTitle];
    
}
-(void)initTitle
{
    UIFont *font=[UIFont systemFontOfSize:20];

    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, 60)];
    [view setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:view];
    
    
    UILabel *registerLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 25, view.frame.size.width/5,view.frame.size.height/2)];
    [registerLabel setText:@"注册"];
    [registerLabel setTextColor:[UIColor orangeColor]];
    [view addSubview:registerLabel];

    
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(view.frame.size.width/2-view.frame.size.width/10, 25, view.frame.size.width/5,view.frame.size.height/2)];
    [titleLabel setText:@"首页"];
    [titleLabel setFont:font];
    [titleLabel setTextColor:[UIColor blackColor]];
    [titleLabel setTextAlignment:UITextAlignmentCenter];
    [view addSubview:titleLabel];

    
    UILabel *loginLabel=[[UILabel alloc]initWithFrame:CGRectMake(view.frame.size.width-view.frame.size.width/5-10, 25, view.frame.size.width/5,view.frame.size.height/2)];
    [loginLabel setText:@"登录"];
    [loginLabel setTextColor:[UIColor orangeColor]];
    [loginLabel setTextAlignment:UITextAlignmentRight];
    [view addSubview:loginLabel];
    
}


@end