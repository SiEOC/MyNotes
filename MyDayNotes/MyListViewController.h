//
//  MyListViewController.h
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyListViewController : UIViewController 

@property (nonatomic,strong)MyListViewController *listView;




- (void)navEditbutton:(UITableViewCell *)cell;

- (void)navAddButton;

- (void)navTitleGestureMethod;


@end

