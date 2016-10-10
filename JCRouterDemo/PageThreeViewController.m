//
//  PageThreeViewController.m
//  JCRouterDemo
//
//  Created by seris-Jam on 16/10/10.
//  Copyright © 2016年 seris-Jam. All rights reserved.
//

#import "JCRouter.h"
#import "PageThreeViewController.h"

@interface PageThreeViewController ()

@end

@implementation PageThreeViewController

//如果是代码 xib 创建ViewController 则JCRouter会调用此方法
- (id)initWithRouterParams:(NSDictionary *)params {
    if ((self = [self initWithNibName:@"DemoPageThree" bundle:nil])) {
        NSLog(@"%@", params);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)onClickPop:(id)sender {
    [[JCRouter shareRouter] popViewControllerAnimated:YES];
}

- (IBAction)onClickPopIndex:(id)sender {
    [[JCRouter shareRouter] popViewControllerWithIndex:2 animated:YES];
}

- (IBAction)onClickPush:(id)sender {
    [[JCRouter shareRouter] pushURL:@"pageThree"];
}

- (IBAction)onDismiss:(id)sender {
    [[JCRouter shareRouter] dismissViewControllerAnimated:YES completion:nil];
}

@end
