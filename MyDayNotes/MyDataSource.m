//
//  MyDataSource.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "MyDataSource.h"
#import "NotesController.h"
#import "MyListViewController.h"

@implementation MyDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 7;
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return nil;
}

//- (MyListViewController *)listView:(MyListViewController *)listView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    MyListViewController *cell = [listView dequeueReusableCellWithIdentifier:@"MyID"];
//    
//    if (cell == nil)
//    {
//        
//        /* Creates a new cell */
//        
//        cell = [[MyListViewController alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
//        
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//        
//    }
//
//
//    return cell;
//}

@end
