//
//  PageOneViewController.m
//  JCRouterDemo
//
//  Created by seris-Jam on 16/10/10.
//  Copyright © 2016年 seris-Jam. All rights reserved.
//

#import "JCRouter.h"
#import "PageOneViewController.h"

@interface PageOneViewController ()

@end

@implementation PageOneViewController

//如果从stroybroad 创建 viewController， 那么JCRouter会执行这个类方法
+ (id)allocWithRouterParams:(NSDictionary *)params {
    PageOneViewController *instance = [[UIStoryboard storyboardWithName:@"DemoPageOne" bundle:nil] instantiateInitialViewController];
    NSLog(@"%@", params);
    return instance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onClickPush:(id)sender {
    [[JCRouter shareRouter] pushURL:@"pageTwo/2"];
}

- (IBAction)onClickPushXib:(id)sender {
    [[JCRouter shareRouter] pushURL:@"pageThree"];
}

- (IBAction)onClickPresent:(id)sender {
    [[JCRouter shareRouter] presentURL:@"pageTwo/2" completion:nil];
}

- (IBAction)onClickPresentNav:(id)sender {
    [[JCRouter shareRouter] presentURL:@"pageTwo/2" withNavigationClass:[UINavigationController class] completion:nil];
}

@end
