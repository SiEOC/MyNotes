//
//  MyListViewController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//


#import "MyListViewController.h"
#import "DetailViewController.h"
#import "Notes.h"
#import "NotesController.h"
#import "MyDataSource.h"


@interface MyListViewController ()

@property (strong, nonatomic) MyDataSource *dataSource; // Why Here?

@end

@implementation MyListViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
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
                                     initWithTitle:@"Note-"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(navEditbutton:)];
    
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    
    
    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Note+"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(navAddButton)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    
    
    /*      Color For View Controller */
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    
    UITableView *tbvc = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.dataSource = [MyDataSource new];
    tbvc.dataSource = self.dataSource;
    
    
    [self.view addSubview:tbvc];
    
}



-(void)navEditbutton:(UITableViewCell *)cell
{
    NSLog(@"Edit Button");
    

}

-(void)navAddButton
{
  NSLog(@"Add Button");
    
    
    DetailViewController *toDetailVC = [[DetailViewController alloc] init]; //Created instance of
    [self.navigationController pushViewController:toDetailVC animated:YES]; // Send to View

}

-(void)navTitleGestureMethod
{
    NSLog(@"Title Gesture");
}






@end
