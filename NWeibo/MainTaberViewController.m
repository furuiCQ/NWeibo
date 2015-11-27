//
//  MainTaberViewController.m
//  NWeibo
//
//  Created by furui on 15/10/13.
//  Copyright © 2015年 furui. All rights reserved.
//

#import "MainTaberViewController.h"

@interface MainTaberViewController()


@end

@implementation MainTaberViewController

@synthesize viewControllArray;

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    viewControllArray=[[NSMutableArray alloc]init];
    [self visibleTabBar];
    [self initCustomNavItem];
    [self initCustomTabBar];
    
}
/**
 *  隐藏系统tabbar
 */
-(void)visibleTabBar
{
    for (UIView *view  in self.view.subviews) {
        if([view isKindOfClass:[UITabBar class]]){
            [view setHidden:YES];
            break;
        }
    }
}
/**
 *自定义标题栏
 */
-(void)initCustomNavItem
{
    //自定义电池栏 可遮盖或不遮盖
    UIView *topView=[[UIView alloc]init];
    [topView setFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    [topView setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:topView];
    
}
-(void)onClick:(id)sender
{    BottomBtn *btn=(BottomBtn *)sender	;
		
    if([btn.text isEqualToString:@""]){
        NSLog(@"点击按钮%ld",(long)btn.tag);
    }else{
        
        NSLog(@"点击底部按钮%ld",(long)btn.tag);
        for (NSObject *object in viewControllArray) {
            BottomBtn *b=(BottomBtn *)object;
            if(b.tag!=btn.tag &&b.tag!=2){
                [b setTextColor:[UIColor blackColor]];
            }
        }
        [btn setTextColor:[UIColor orangeColor]];
        if(btn.tag>2){
            self.selectedIndex=btn.tag-1;
        }else{
            self.selectedIndex=btn.tag;
        }
     
 
    }
}
-(void)initCustomTabBar
{
    [self initBottomBtn:self.tabBar.frame.size itemNumb:5];
}
-(void)initBottomBtn:(CGSize)size itemNumb:(int)numb
{
    UIView *tabBarBackgroundView=[[UIView alloc] initWithFrame:CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y, self.tabBar.frame.size.width, self.tabBar.frame.size.height)];
    [tabBarBackgroundView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:tabBarBackgroundView];

    CGFloat btnwidth=size.width;
    CGFloat btnhegiht=size.height;
    NSArray *iconArray =[NSArray arrayWithObjects:@"\U0000e658",@"\U0000e644",@"\U0000e62d",@"\U0000e662",
                     @"\U0000e67a",nil];
    NSArray *textArray =[NSArray arrayWithObjects:@"首页",@"消息",@"",@"发现",
                     @"我",nil];
    UIFont *font=[UIFont fontWithName:@"iconfont" size:23];
    UIColor *textColor=[UIColor blackColor];
    
    for (int i=0; i<numb; i++) {
        BottomBtn *btnView=[[BottomBtn alloc]initWithFrame:CGRectMake(btnwidth*i/5+1, 1, btnwidth/5-2, btnhegiht-2)];
        [btnView addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [btnView setTag:i];
        [btnView setIcon:[iconArray objectAtIndex:i]];
        [btnView setText:[textArray objectAtIndex:i]];
        [btnView setIconColor:textColor];
        [btnView setTextColor:textColor];
        [btnView setIconFont:font];
        [btnView setTextFont:[UIFont systemFontOfSize:15]];
        [btnView initView];
        [tabBarBackgroundView addSubview:btnView];
        [viewControllArray addObject:btnView];
    }
    
    
}


@end