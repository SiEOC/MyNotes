//
//  MyListViewController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "MyListViewController.h"
#import "DetailViewController.h"

@interface MyListViewController ()

@end

@implementation MyListViewController


- (void)viewDidAppear:(BOOL)animated
{
    
    /*    Gesture Methdods Title   */
    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(navTitleGestureMethod)];
    UILabel * titleView = [UILabel new];
    titleView.text = @"My Notes";
    titleView.textColor = [UIColor redColor];
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
    [self.navigationController.navigationBar setTranslucent:NO];
    
    
    /* Adding Butotons To  Left Nav Bar Item @ View Controller  */
    
    UIBarButtonItem *removeButton = [[UIBarButtonItem alloc]
                                     initWithTitle:@"Edit"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(navEditbutton)];
    
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    
    
    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Add"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(navAddButton)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    
    
    /*      Color For View Controller */
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    
    
    
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


-(void)navEditbutton
{
    NSLog(@"Edit Button");
}

-(void)navAddButton
{
  NSLog(@"Add Button");
}

-(void)navTitleGestureMethod
{
    NSLog(@"Title Gesture");
}






@end
