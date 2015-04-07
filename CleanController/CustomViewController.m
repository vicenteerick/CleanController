//
//  ViewController.m
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import "CustomViewController.h"
#import "TableDataSource.h"
#import "UserViewCell.h"
#import "User.h"

@interface CustomViewController ()
@property (weak, nonatomic) IBOutlet UITableView *userTableView;
@property (strong, nonatomic) TableDataSource *dataSource;
@property (strong, nonatomic) User *user;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTable];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setTable{
    
    User *user1 = [[User alloc] initWithName:@"Nick Fury" identity:@"1234567" andImageName:@"nick_fury.jpg"];
    User *user2 = [[User alloc] initWithName:@"Nick Fury" identity:@"1234567" andImageName:@"nick_fury.jpg"];
    
    NSArray *usersArray = [[NSArray alloc] initWithObjects:user1, user2, nil];
    
    UserViewCell *cell = [_userTableView dequeueReusableCellWithIdentifier:@"UserViewCell"];
    
    NSDictionary *usersCell = [[NSDictionary alloc] initWithObjectsAndKeys:usersArray, @"0", nil];
    NSDictionary *cellsTable = [[NSDictionary alloc] initWithObjectsAndKeys:cell, @"0", nil];
    
    _dataSource = [[TableDataSource alloc] initWithCellForSection:cellsTable andObjectsForCell:usersCell];
    
    _userTableView.dataSource = _dataSource;
    
    [_userTableView reloadData];
}

@end
