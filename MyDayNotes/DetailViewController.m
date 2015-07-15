//
//  DetailViewController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "DetailViewController.h"
#import "MyListViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
  
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(navTitleGestureMethod)];
    UILabel * titleView = [UILabel new];
    titleView.text = @"Notes";
    titleView.textColor = [UIColor redColor];
    [titleView sizeToFit];
    titleView.userInteractionEnabled = YES;
    [titleView addGestureRecognizer:tapGesture];
    
    self.navigationItem.titleView = titleView;
    [self.navigationController.navigationBar setTranslucent:NO];

  
    /* Adding Butotons To  Left Nav Bar Item @ View Controller  */
    
    UIBarButtonItem *removeButton = [[UIBarButtonItem alloc]
                                      initWithTitle:@"Back"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(leftMethod)]; 
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    

    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Save"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(rightMethod)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    

    /*      Color For View Controller */
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    
[super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)navEditbutton
{
    NSLog(@"Edit Button");
    
    //  ActionSheet or drop down
    
    //  Remove Entry
}

-(void)navAddButton
{
    NSLog(@"Add Button");
    //  Present DetailViewContorller
    
    
//    DetailViewController *toDetailVC = [[DetailViewController alloc] init];
    MyListViewController *toMyListVC = [[MyListViewController alloc] init];
    
    [self presentViewController:toMyListVC animated:YES completion:nil];
}

-(void)navTitleGestureMethod
{
    NSLog(@"Title Gesture");
}




@end
