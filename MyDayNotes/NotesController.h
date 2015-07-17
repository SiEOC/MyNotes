//
//  NotesController.h
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Notes.h"

@interface NotesController : NSObject
@property (strong, nonatomic,) NSArray *iWasGiven_Array;

+ (NotesController *)sharedInstance;

- (Notes *)createNotesWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

- (void)addingNotes:(Notes *)notes;
- (void)removingNotes:(Notes *)notes;
- (void)saveNotes;

@end
