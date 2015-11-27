//
//  BottomBtn.m
//  NWeibo
//
//  Created by frain on 15/11/27.
//  Copyright © 2015年 furui. All rights reserved.
//

#import "BottomBtn.h"
@interface BottomBtn()

@end

@implementation BottomBtn

@synthesize iconLabel;
@synthesize textLabel;
@synthesize icon;
@synthesize text;
@synthesize iconColor;
@synthesize textColor;
@synthesize iconFont;
@synthesize textFont;

- (instancetype)init
{
    self = [super init];
    if (self) {
       //
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        

        
    }
    return self;
}
-(void)setTextColor:(UIColor *)color{
    [textLabel setTextColor:color];
    [iconLabel setTextColor:color];

}
-(void)initView{
    if(![text isEqualToString:@""]){
        iconLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 1, self.frame.size.width, self.frame.size.height*2/3)];
        [iconLabel setText:icon];
        [iconLabel setFont:iconFont];
        [iconLabel setTextAlignment:UITextAlignmentCenter];
        [iconLabel setTextColor:iconColor];
        [self addSubview:iconLabel];
        
        textLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 1+self.frame.size.height*2/3, self.frame.size.width, self.frame.size.height/3-1)];
        [textLabel setText:text];
        [textLabel setTextAlignment:UITextAlignmentCenter];
        [textLabel setFont:[UIFont systemFontOfSize:15]];
        [textLabel setTextColor:textColor];
        [self addSubview:textLabel];
        
    }else{
        iconLabel=[[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width/8, 2, self.frame.size.width*3/4, self.frame.size.height-4)];
        [iconLabel setText:icon];
        [iconLabel setFont:iconFont];
        [iconLabel setTextAlignment:UITextAlignmentCenter];
        [iconLabel setBackgroundColor:[UIColor orangeColor]];
        [iconLabel setTextColor:[UIColor whiteColor]];
        iconLabel.layer.cornerRadius=5;
        iconLabel.layer.masksToBounds=YES;
        [self addSubview:iconLabel];
        
    }
}


@end