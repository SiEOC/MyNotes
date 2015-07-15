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



@property (strong, nonatomic) Notes *detailNotes;


-(void)removeNotesWritten;

- (void)updateWithNotes:(Notes *)detailNotes;

- (void)saveDone;

- (void)addPhoto;

- (void)newGestureMethod;

@end
