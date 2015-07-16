////
////  CameraDataSourcce.m
////  MyDayNotes
////
////  Created by Skyler Clark on 7/16/15.
////  Copyright (c) 2015 Skyler Clark. All rights reserved.
////
//
//#import "CameraDataSourcce.h"
//
//@implementation CameraDataSourcce
//
//
//- (void)viewDidLoad
//{
//
//    
//    /* init table view */
//    
//    UITableView *tableVC = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    
//    /* set delegate & dataSource, otherwise the the table will be empty and not responsive */
//    tableVC.delegate = 
//    
//    
//    
//    tableVC.dataSource = self;
//    
//    tableVC.backgroundColor = [UIColor colorWithRed:15 green:0 blue:0 alpha:0.56];
//    
//    /* add to View */
////    [self.view addSubview:tableVC];
//}
//
//#pragma mark - UITableViewDataSource
//
///* number of section(s), now I assume there is only 1 section */
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
//{
//    return 0;
//}
//
//
///* number of row in the section */
//- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
//{
//    return 12;
//}
//
///* This cell will be returned to the tableView */
//
//- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *cellIdentifier = @"Cells";
//    
//    /* Custom Cell & The Custom Cell Properties */
//    
//    TableViewCell *cell = (TableViewCell*)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    if (cell == nil)
//    {
//        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    
//    
//    cell.descriptionLabel.text = @"Testing";
//    
//    return cell;
//}
//
//#pragma mark - UITableViewDelegate
//
///* User tap the row, what action you want to perform */
//
//- (void)tableView:(UITableView *)theTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"selected %ld row", (long)indexPath.row);
//}
//
//
//@end
