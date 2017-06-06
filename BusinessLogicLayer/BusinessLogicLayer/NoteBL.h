//
//  NoteBL.h
//  BusinessLogicLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PersistenceLayer/NoteDAO.h>
#import <PersistenceLayer/Note.h>

@interface NoteBL : NSObject

- (NSMutableArray *)createNote:(Note *)model;

- (NSMutableArray *)removeNote:(Note *)model;

- (NSMutableArray *)findAll;

@end
