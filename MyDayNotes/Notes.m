//
//  Notes.m
//  MyDayNotes
//
//  Created by Skyler Clark on 7/15/15.
//  Copyright (c) 2015 Skyler Clark. All rights reserved.
//

#import "Notes.h"

@implementation Notes

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self)
    {
        self.title = dictionary[TitleKey];
        self.bodyText = dictionary[BodyTextKey];
        self.timestamp = dictionary[TimeStampKey];
    }
    return self;
}

- (NSDictionary *)myMethodWithDictionaryKeys
{
    NSDictionary *dictionary = @{
                                 TitleKey : self.title,
                                 BodyTextKey : self.bodyText,
                                 TimeStampKey : self.timestamp,
                                 };
    
    return dictionary;
}



@end
