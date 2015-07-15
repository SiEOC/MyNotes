//
//  MyListViewController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "MyListViewController.h"

@interface MyListViewController ()

@end

@implementation MyListViewController


- (void)viewDidAppear:(BOOL)animated  // As of rght Now view Did load is not 'respndig'  "viee will appear is.. :)
{
    
    // Q: Movies appear after detail view...,
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setLeftBarButtonItem:leftItem animated:YES];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:nil];
    [self.navigationItem setRightBarButtonItem:rightItem animated:YES];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setTranslucent:NO]; 
    
    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] init];
    UILabel *titleView = [UILabel new];
    titleView.text = @"My Notess";
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
    [self.navigationController.navigationBar setTranslucent:NO];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.listView = self;

}

- (void)viewWillAppear:(BOOL)animated
{
//    [self.listView reloadData]; addDataSource
}



@end
