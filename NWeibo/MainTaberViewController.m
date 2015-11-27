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

@synthesize viewControllMutable;

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
    
}
-(void)onClick:(UIControl *)control
{
    NSLog(@"点击底部按钮");
}
-(void)initCustomTabBar
{
    [self initBottomBtn:self.tabBar.frame.size itemNumb:5];
   
    
 /*   UIFont *font=[UIFont fontWithName:@"iconfont" size:20];
    UIColor *textColor=[UIColor blackColor];
    
    UIControl *Btn1View=[[UIControl alloc]initWithFrame:CGRectMake(0, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [Btn1View setBackgroundColor:[UIColor greenColor]];
    [Btn1View addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [tabBarBackgroundView addSubview:Btn1View];
    
    UILabel *icon1Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon1Label setText:@"\U000f004a"];
    [icon1Label setFont:font];
    [icon1Label setTextColor:textColor];
    [Btn1View addSubview:icon1Label];
    
    
    UIControl *Btn2View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [Btn2View addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [Btn2View setBackgroundColor:[UIColor greenColor]];

    [tabBarBackgroundView addSubview:Btn2View];
    
    UILabel *icon2Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon2Label setText:@"\U0000e644"];
    [icon2Label setFont:font];
    [icon2Label setTextColor:textColor];
    [Btn2View addSubview:icon2Label];
    
    
    UIControl *Btn3View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*2/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [Btn3View setBackgroundColor:[UIColor greenColor]];
    [Btn3View addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [tabBarBackgroundView addSubview:Btn3View];
    
    UILabel *icon3Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon3Label setText:@"\U0000e62d"];
    [icon3Label setFont:font];
    [icon3Label setTextColor:textColor];
    [Btn3View addSubview:icon3Label];
    
    
    
    UIControl *Btn4View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*3/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [Btn4View setBackgroundColor:[UIColor greenColor]];
    [Btn4View addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [tabBarBackgroundView addSubview:Btn4View];
    
    UILabel *icon4Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn1View.frame.size.width/2, Btn1View.frame.size.height/2)];
    [icon4Label setText:@"\U0000e662"];
    [icon4Label setFont:font];
    [icon4Label setTextColor:textColor];
    [Btn4View addSubview:icon4Label];
    
    
    
    UIControl *Btn5View=[[UIControl alloc]initWithFrame:CGRectMake(self.tabBar.frame.size.width*4/5, 5, self.tabBar.frame.size.width/5, self.tabBar.frame.size.height-10)];
    [Btn5View addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [Btn5View setBackgroundColor:[UIColor greenColor]];

    [tabBarBackgroundView addSubview:Btn5View];
    
    UILabel *icon5Label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, Btn5View.frame.size.width/2, Btn5View.frame.size.height/2)];
    [icon5Label setText:@"\U0000e67a"];
    [icon5Label setFont:font];
    [icon5Label setTextColor:textColor];
    [Btn5View addSubview:icon5Label];
    
    
    [self.view addSubview:tabBarBackgroundView];
    */
    
    
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
        UIControl *btnView=[[UIControl alloc]initWithFrame:CGRectMake(btnwidth*i/5+1, 1, btnwidth/5-2, btnhegiht-2)];
        [btnView addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [btnView setTag:i];
        [tabBarBackgroundView addSubview:btnView];
        
        if(![[textArray objectAtIndex:i] isEqualToString:@""]){
            UILabel *iconLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 1, btnView.frame.size.width, btnView.frame.size.height*2/3)];
            [iconLabel setText:[iconArray objectAtIndex:i]];
            [iconLabel setFont:font];
            [iconLabel setTextAlignment:UITextAlignmentCenter];
            [iconLabel setTextColor:textColor];
            [btnView addSubview:iconLabel];
            
            UILabel *textLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 1+btnView.frame.size.height*2/3, btnView.frame.size.width, btnView.frame.size.height/3-1)];
            [textLabel setText:[textArray objectAtIndex:i]];
            [textLabel setTextAlignment:UITextAlignmentCenter];
            [textLabel setFont:[UIFont systemFontOfSize:15]];
            [textLabel setTextColor:textColor];
            [btnView addSubview:textLabel];

        }else{
            UILabel *iconLabel=[[UILabel alloc]initWithFrame:CGRectMake(btnView.frame.size.width/8, 2, btnView.frame.size.width*3/4, btnView.frame.size.height-4)];
            [iconLabel setText:[iconArray objectAtIndex:i]];
            [iconLabel setFont:font];
            [iconLabel setTextAlignment:UITextAlignmentCenter];
            [iconLabel setBackgroundColor:[UIColor orangeColor]];
            [iconLabel setTextColor:[UIColor whiteColor]];
            iconLabel.layer.cornerRadius=5;
            iconLabel.layer.masksToBounds=YES;
            [btnView addSubview:iconLabel];

        }
    }
    
    
}


@end