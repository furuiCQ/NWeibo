//
//  BottomBtn.h
//  NWeibo
//
//  Created by frain on 15/11/27.
//  Copyright © 2015年 furui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BottomBtn : UIControl
@property(strong,nonatomic)UILabel *iconLabel;
@property(strong,nonatomic)UILabel *textLabel;
@property(strong,nonatomic)NSString *icon;
@property(strong,nonatomic)NSString *text;
@property(strong,nonatomic)UIColor *iconColor;
@property(strong,nonatomic)UIColor *textColor;
@property(strong,nonatomic)UIFont *iconFont;
@property(strong,nonatomic)UIFont *textFont;
-(void)initView;
@end