//
//  PageTwoViewController.m
//  JCRouterDemo
//
//  Created by seris-Jam on 16/10/10.
//  Copyright © 2016年 seris-Jam. All rights reserved.
//

#import "JCRouter.h"
#import "PageTwoViewController.h"

@interface PageTwoViewController ()

@end

@implementation PageTwoViewController

//如果是代码 xib 创建ViewController 则JCRouter会调用此方法
- (id)initWithRouterParams:(NSDictionary *)params {
    if ((self = [self initWithNibName:nil bundle:nil])) {
        NSLog(@"%@", params);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *customButton = [[UIButton alloc] init];
    [customButton setTitle:@"dismiss" forState:UIControlStateNormal];
    [customButton addTarget:self action:@selector(onClickDismiss) forControlEvents:UIControlEventTouchUpInside];
    [customButton setBackgroundColor:[UIColor blueColor]];
    [customButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:customButton];
    
    NSArray *constratinH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[customButton]-40-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(customButton)];
    NSArray *constratinV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-120-[customButton(==30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(customButton)];
    
    [self.view addConstraints:constratinH];
    [self.view addConstraints:constratinV];
    
    UIButton *customButton1 = [[UIButton alloc] init];
    [customButton1 setTitle:@"dismiss到指定层级" forState:UIControlStateNormal];
    [customButton1 addTarget:self action:@selector(onClickDismissIndex) forControlEvents:UIControlEventTouchUpInside];
    [customButton1 setBackgroundColor:[UIColor blueColor]];
    [customButton1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:customButton1];
    
    NSArray *constratinH1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[customButton1]-40-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(customButton1)];
    NSArray *constratinV1 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-170-[customButton1(==30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(customButton1)];
    
    [self.view addConstraints:constratinH1];
    [self.view addConstraints:constratinV1];
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

- (void)onClickDismiss {
    [[JCRouter shareRouter] dismissViewControllerAnimated:YES completion:nil];
}

- (void)onClickDismissIndex {
    [[JCRouter shareRouter] dismissViewControllerWithIndex:2 animated:YES completion:nil];
}

@end
