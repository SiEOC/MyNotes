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
#import "CameraViewController.h"

@interface DetailViewController ()



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
                                      action:@selector(saveDone)];
    
    [self.navigationItem setLeftBarButtonItem:removeButton animated:YES];
    

    /*   Right Nav Button  @ View Controller  */
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                  initWithTitle:@"Photo+"
                                  style:UIBarButtonItemStylePlain
                                  target:self
                                  action:@selector(addPhoto)];
    
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
        self.detailNotes = [[NotesController sharedInstance] createNotesWithTitle:self.titleTextField.text bodyText:self.bodyTextField.text];
        
                            [[NotesController sharedInstance] saveNotes];
        
    }
    
    NSLog(@"Back & Save Button");  /* ActionSheet or drop down ,Remove.. */


    [self.navigationController popToRootViewControllerAnimated:YES];

    

}

-(void)removeNotesWritten
{
    self.titleTextField.text = @"";
    self.title = @"";
    self.bodyTextField.text = @"";
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

-(void)addPhoto
{
    NSLog(@"Add Image Button");

    CameraViewController *toCameraVC = [[CameraViewController alloc] init];
    
    [self.navigationController pushViewController:toCameraVC animated:TRUE];
    
    
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
