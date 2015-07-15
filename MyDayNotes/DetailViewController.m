//
//  DetailViewController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "DetailViewController.h"
#import "MyListViewController.h"
#import "NotesController.h"

@interface DetailViewController ()

@property (nonatomic,strong)UITextField *titleTextField;
@property (nonatomic, strong) UITextField *bodyTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
  
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
    

    
    [self updateWithNotes:self.detailNotes];
    
}

#pragma My Methods

- (void)updateWithNotes:(Notes *)detailNotes
{
    self.titleTextField.text = detailNotes.title;
    self.bodyTextField.text = detailNotes.bodyText;
}

-(void)saveDone
{
    if (self.detailNotes)
    {
        self.detailNotes.title = self.titleTextField.text;
        self.detailNotes.bodyText = self.bodyTextField.text;
        self.detailNotes.timestamp = [NSDate date]; // Else it will not be legit
    }
    else
    {
        self.detailNotes = [[NotesController sharedInstance] createNotesWithTitle:self.titleTextField.text bodyText:self.bodyTextField];
        
                            [[NotesController sharedInstance] saveNotes];
        
    }
    
    NSLog(@"Back & Save Button");  /* ActionSheet or drop down ,Remove.. */
    
    
    [self dismissViewControllerAnimated:self completion:nil];

}

-(void)removeNotesWritten
{
    self.titleTextField = @"";
    self.title = @"";
    self.bodyTextField = @"";
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

-(void)addPhoto
{
    NSLog(@"Add Image Button");
    
    MyListViewController *toMyListVC = [[MyListViewController alloc] init];
    
    [self presentViewController:toMyListVC animated:YES completion:nil];
}

-(void)newGestureMethod
{
    NSLog(@"Title Gesture");
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
