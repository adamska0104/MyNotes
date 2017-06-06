//
//  NoteDAO.m
//  PersistenceLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import "NoteDAO.h"

@implementation NoteDAO

static NoteDAO *sharedSingleton = nil;

+(NoteDAO *) sharedInstance {
    static dispatch_once_t once;

    dispatch_once(&once, ^{
        sharedSingleton = [[self alloc] init];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        
        NSDate *date1 = [dateFormatter dateFromString:@"2017-06-06 15:09:15"];
        Note *note1 = [[Note alloc] initWithDate:date1 content:@"Welcome to MyNote."];
        
        NSDate *date2 = [dateFormatter dateFromString:@"2017-06-07 10:11:56"];
        Note *note2 = [[Note alloc] initWithDate:date2 content:@"欢迎使用MyNote。"];
        
        sharedSingleton.listDate = [[NSMutableArray alloc] init];
        [sharedSingleton.listDate addObject:note1];
        [sharedSingleton.listDate addObject:note2];
    });
    
    return sharedSingleton;
}

-(void) create:(Note *)model {
    [self.listDate addObject:model];
}

-(void) remove:(Note *)model {
    [self.listDate removeObject:model];
}

-(Note *) findByID:(Note *)model {
    for (Note *note in self.listDate) {
        if ([note.date isEqualToDate:model.date])
            return note;
    }
    
    return nil;
}

-(void) modify:(Note *)model {
    for (Note *note in self.listDate) {
        if ([note.date isEqualToDate:model.date]) {
            note.content = model.content;
            return;
        }
    }
}

-(NSMutableArray *) findAll {
    return self.listDate;
}


@end
