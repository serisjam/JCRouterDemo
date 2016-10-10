//
//  PresentViewController.m
//  JCRouterDemo
//
//  Created by seris-Jam on 16/10/10.
//  Copyright © 2016年 seris-Jam. All rights reserved.
//

#import "JCRouter.h"
#import "PresentViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

//如果从stroybroad 创建 viewController， 那么JCRouter会执行这个类方法
+ (id)allocWithRouterParams:(NSDictionary *)params {
    PresentViewController *instance = [[UIStoryboard storyboardWithName:@"PresentPage" bundle:nil] instantiateInitialViewController];
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
- (IBAction)onClickDismiss:(id)sender {
    [[JCRouter shareRouter] dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onClickPresent:(id)sender {
    [[JCRouter shareRouter] presentURL:@"pageTwo/4" completion:nil];
}

- (IBAction)onClickPush:(id)sender {
    //此时用用默认的UINavigationController 包裹并且加到当前的window rootViewController 可以通过JCRouter defaultNavigationClass自定义一个UINavigation的子类
    [[JCRouter shareRouter] pushURL:@"pageThree"];
}

- (IBAction)onClickPresentNav:(id)sender {
    [[JCRouter shareRouter] presentURL:@"pageThree" withNavigationClass:[UINavigationController class] completion:nil];
}

@end
