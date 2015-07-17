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
        [sharedInstance loadFromPersistentStorage];
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
    if (!notes)
    {
        return;
    }
    
    NSMutableArray *mutableManyNotes = self.iWasGiven_Array.mutableCopy;
    
    [mutableManyNotes addObject:notes];
    
    self.iWasGiven_Array = mutableManyNotes;
    
    [self saveToPersistentStorage];
}


- (void)removingNotes:(Notes*)notes
{
    NSLog(@"Remove");
    
    
    if (!notes)
    {
        return;
    }
    
    NSMutableArray *mutableNotes = self.iWasGiven_Array.mutableCopy;   /*  See Here  */
    [mutableNotes removeObject:notes];
    

    
    self.iWasGiven_Array = mutableNotes;
    [self saveToPersistentStorage];
}

- (void)saveToPersistentStorage  /*  See Here  */
{
    
}

- (void)loadFromPersistentStorage
{
    
    NSArray *fullPathArray = [NSArray arrayWithContentsOfFile:self.pathToFile];
    NSMutableArray *theGiveMeArray = [NSMutableArray new];
    
    
    for (NSDictionary *theNotes in fullPathArray)
    {
        [theGiveMeArray addObject:[[Notes alloc] initWithDictionary:theNotes]];
    }
    self.iWasGiven_Array = theGiveMeArray;
}

- (void)saveNotes
{
    [self saveToPersistentStorage];

}

- (NSString *)pathToFile
{
    //Creating a file path:
    //1) Search for the app's documents directory (copy+paste from Documentation)
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //2) Create the full file path by appending the desired file name
    NSString *pathToFile = [documentsDirectory stringByAppendingPathComponent:@"entries.plist"];
    
    return pathToFile;
}
@end
