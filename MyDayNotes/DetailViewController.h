//
//  DetailViewController.h
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Notes.h"

@interface DetailViewController : UIViewController


@property (nonatomic,strong)UITextField *titleTextField;
@property (nonatomic, strong) UITextField *bodyTextField;
@property (strong, nonatomic) Notes *propertyInstanceOfNotesClass;


-(void)removeNotesWritten;

- (void)updateWithNotes:(Notes *)propertyInstanceOfNotesClass;

- (void)saveDone;

- (void)addPhoto;

- (void)titleMethod;

@end
