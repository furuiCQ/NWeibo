//
//  ViewController.m
//  NWeibo
//
//  Created by furui on 15/10/11.
//  Copyright © 2015年 furui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<WBHttpRequestDelegate>

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *loginButton=[[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [loginButton setTitle:@"登陆微博" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:loginButton];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)login{
    WBAuthorizeRequest *request=[WBAuthorizeRequest request];
    request.redirectURI=@"http://www.sina.com";
    request.scope=@"all";
    request.userInfo=@{@"SSO_From":@"SendMessageToWeiboViewController",
                       @"Other_Info_1": [NSNumber numberWithInt:123]
                       };
    [WeiboSDK sendRequest:request];
    
}
#pragma mark
#pragma WBHttpRequestDelegate
-(void)request:(WBHttpRequest *)request didFinishLoadingWithResult:(NSString *)result
{
    //成功回调
    NSLog(@"成功回调:%@",result);
}
-(void)request:(WBHttpRequest *)request didFailWithError:(NSError *)error
{
    //失败回调
    NSLog(@"失败回调:%@",error);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
