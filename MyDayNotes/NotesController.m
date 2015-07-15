//
//  NotesController.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "NotesController.h"

static NSString* const AllNotesKey = @"allNotes";

@interface NotesController ()

@property (nonatomic,strong)NSArray *arrayNotes;

@end

@implementation NotesController

+ (NotesController *)sharedInstance
{
    static NotesController *sharedInstance = nil;
    static dispatch_once_t onceInit;
    dispatch_once(&onceInit, ^{ sharedInstance = [NotesController new];
//        [sharedInstance loadFromPersistentStorage];
    });
    return sharedInstance;
}


- (Notes *)createNotesWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Notes *newNotes = [Notes new];
    newNotes.title = title;
    newNotes.bodyText = bodyText;  // Here
    [self addingNotes:newNotes];
    return newNotes;

}




- (void)addingNotes:(Notes *)notes
{
    if (!notes) {
        return;
    }
    
    NSMutableArray *mutableManyNotes = self.notesArray.mutableCopy;
    [mutableManyNotes addObject:notes];
    
//    self.notesArray = mutableManyNotes;
    [self saveToPersistentStorage];
}

#pragma mark - Read

- (void)saveToPersistentStorage  /*  See Here  */
{

}
#pragma mark - Update


- (void)removingNotes:(Notes*)notes
{
    NSLog(@"Remove");
}

- (void)saveNotes
{
    [self saveToPersistentStorage];
}
@end
