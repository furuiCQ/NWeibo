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
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
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
    
//    UIView *titleView=[[UIView alloc]init];
//    [titleView setFrame:CGRectMake(0, 20, self.view.frame.size.width, 20)];
//    [titleView setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:titleView];
//    
//    UILabel
 
}
-(void)initCustomTabBar
{
    UIView *tabBarBackgroundView=[[UIView alloc] initWithFrame:CGRectMake(self.tabBar.frame.origin.x, self.tabBar.frame.origin.y, self.tabBar.frame.size.width, self.tabBar.frame.size.height)];
    [tabBarBackgroundView setBackgroundColor:[UIColor redColor]];
    UIFont *font=[UIFont systemFontOfSize:12];
    
    
    UIControl *Btn1View=[[UIControl alloc]initWithFrame:CGRectMake(0, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [tabBarBackgroundView addSubview:Btn1View];
    
    UILabel *icon1Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon1Label setText:@"首页"];
    [icon1Label setFont:font];
    [icon1Label setTextColor:[UIColor yellowColor]];
    [Btn1View addSubview:icon1Label];
    
    
    UIControl *Btn2View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [tabBarBackgroundView addSubview:Btn2View];
    
    UILabel *icon2Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon2Label setText:@"发现"];
    [icon2Label setFont:font];
    [icon2Label setTextColor:[UIColor yellowColor]];
    [Btn2View addSubview:icon2Label];
    
    
    UIControl *Btn3View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*2/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [tabBarBackgroundView addSubview:Btn3View];
    
    UILabel *icon3Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon3Label setText:@"我的"];
    [icon3Label setFont:font];
    [icon3Label setTextColor:[UIColor yellowColor]];
    [Btn3View addSubview:icon3Label];
    
    
    
    UIControl *Btn4View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*3/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [tabBarBackgroundView addSubview:Btn4View];
    
    UILabel *icon4Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon4Label setText:@"设置"];
    [icon4Label setFont:font];
    [icon4Label setTextColor:[UIColor yellowColor]];
    [Btn4View addSubview:icon4Label];
    
    
    
    UIView *Btn5View=[[UIView alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*4/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [tabBarBackgroundView addSubview:Btn5View];
    
    UILabel *icon5Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn5View.frame.size.width/2, Btn5View.frame.size.height/2)];
    [icon5Label setText:@"首页"];
    [icon5Label setFont:font];
    [icon5Label setTextColor:[UIColor yellowColor]];
    [Btn5View addSubview:icon5Label];
    
    
    [self.view addSubview:tabBarBackgroundView];
    
    
    
}


@end