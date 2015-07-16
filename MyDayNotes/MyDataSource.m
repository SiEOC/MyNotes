
 //  MyDataSource.m
//  MyDayNotes

  //  Created by Skyler Clark on 7/15/15.
 //  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "MyDataSource.h"
#import "NotesController.h"
#import "MyListViewController.h"

@implementation MyDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    Notes *instanceNotes = [NotesController sharedInstance].notesArray[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyID"];
    cell.textLabel.text = instanceNotes.title;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [NotesController sharedInstance].notesArray.count;
}

@end
