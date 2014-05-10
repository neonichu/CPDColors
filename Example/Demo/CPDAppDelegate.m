//
//  CPDAppDelegate.m
//  Demo
//
//  Created by Boris Bügling on 10/05/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import <CPDColors/CPDColors.h>

#import "CPDAppDelegate.h"

@implementation CPDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UINavigationBar appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName: [UIColor ortaOrange] }];
    
    UITableViewController* tableViewController = [UITableViewController new];
    tableViewController.tableView.backgroundColor = [UIColor florianWhiteish];
    tableViewController.tableView.bounces = NO;
    tableViewController.tableView.dataSource = self;
    tableViewController.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableViewController.title = @"CocoaPods color scheme";
    
    [tableViewController.tableView registerClass:UITableViewCell.class
                          forCellReuseIdentifier:NSStringFromClass(self.class)];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UINavigationController alloc]
                                      initWithRootViewController:tableViewController];
    self.window.rootViewController.view.backgroundColor = [UIColor florianWhiteish];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self.class)
                                                            forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    switch (indexPath.row) {
        case 0:
            cell.backgroundColor = [UIColor alloyBlue];
            break;
        case 1:
            cell.backgroundColor = [UIColor andyRed];
            break;
        case 2:
            cell.backgroundColor = [UIColor fabioBurgundy];
            break;
        case 3:
            cell.backgroundColor = [UIColor florianWhiteish];
            break;
        case 4:
            cell.backgroundColor = [UIColor keithGrey];
            break;
        case 5:
            cell.backgroundColor = [UIColor kyleBrown];
            break;
        case 6:
            cell.backgroundColor = [UIColor ortaOrange];
            break;
    }
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

@end
