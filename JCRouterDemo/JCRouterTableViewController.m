//
//  JCRouterTableViewController.m
//  JCRouterDemo
//
//  Created by seris-Jam on 16/10/10.
//  Copyright © 2016年 seris-Jam. All rights reserved.
//

#import "JCRouter.h"
#import "JCRouterTableViewController.h"

@interface JCRouterTableViewController ()

@end

@implementation JCRouterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [[JCRouter shareRouter] pushURL:@"pageOne/Man/Jam"];
            break;
        case 1:
            [[JCRouter shareRouter] presentURL:@"presentPage" completion:nil];
            break;
        default:
            break;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
