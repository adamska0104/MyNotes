//
//  NoteBL.m
//  BusinessLogicLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import "NoteBL.h"

@implementation NoteBL

- (NSMutableArray *)createNote:(Note *)model {
    NoteDAO *dao = [NoteDAO sharedInstance];
    [dao create:model];
    
    return [dao findAll];
}

- (NSMutableArray *)removeNote:(Note *)model {
    NoteDAO *dao = [NoteDAO sharedInstance];
    [dao remove:model];
    
    return [dao findAll];
}

- (NSMutableArray *)findAll {
    NoteDAO *dao = [NoteDAO sharedInstance];
    
    return [dao findAll];
}

@end
