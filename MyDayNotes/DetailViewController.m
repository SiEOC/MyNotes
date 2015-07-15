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

@property (nonatomic,strong)UITextField *titleTextField;
@property (nonatomic, strong) UITextField *bodyTextField;

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
                                      initWithTitle:@"Done"
                                      style:UIBarButtonItemStylePlain
                                      target:self
                                      action:@selector(navEditbutton)];
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    

    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Photo+"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(navAddButton)];
    
    [self.navigationItem setRightBarButtonItem:addButton animated:YES];
    

    /*      Color For View Controller */
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];
    
[super viewDidLoad];
    
    [self updateWithNotes:self.detailNotes];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateWithNotes:(Notes *)detailNotes
{
    self.titleTextField.text = detailNotes.title;
    self.bodyTextField.text = detailNotes.bodyText;
}

-(void)saveDone
{
    NSLog(@"Back & Save Button");
    
    //  ActionSheet or drop down
    
    //  Remove Entry
}

-(void)addPhoto
{
    NSLog(@"Add Image Button");
    //  Present DetailViewContorller
    
    
//    DetailViewController *toDetailVC = [[DetailViewController alloc] init];
    MyListViewController *toMyListVC = [[MyListViewController alloc] init];
    
    [self presentViewController:toMyListVC animated:YES completion:nil];
}

-(void)newGestureMethod
{
    NSLog(@"Title Gesture");
}




@end
