//
//  DiscoverViewController.m
//  NWeibo
//
//  Created by frain on 15/11/27.
//  Copyright © 2015年 furui. All rights reserved.
//
#import "DiscoverViewController.h"

@interface DiscoverViewController()

@end

@implementation DiscoverViewController
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.view setBackgroundColor:[UIColor grayColor]];
    [self initTitle];
    
}
-(void)initTitle
{
    UIFont *font=[UIFont systemFontOfSize:20];
    
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, 60)];
    [view setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:view];
    
    
   
    
    
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(view.frame.size.width/2-view.frame.size.width/10, 25, view.frame.size.width/5,view.frame.size.height/2)];
    [titleLabel setText:@"发现"];
    [titleLabel setFont:font];
    [titleLabel setTextColor:[UIColor blackColor]];
    [titleLabel setTextAlignment:UITextAlignmentCenter];
    [view addSubview:titleLabel];
    
    
   
}
@end