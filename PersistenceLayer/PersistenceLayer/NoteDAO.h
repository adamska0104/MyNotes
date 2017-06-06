//
//  NoteDAO.h
//  PersistenceLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"

@interface NoteDAO : NSObject

@property (strong, nonatomic) NSMutableArray *listDate;

+(NoteDAO *) sharedInstance;

-(void) create:(Note *)model;

-(void) remove:(Note *)model;

-(Note *) findByID:(Note *)model;

-(void) modify:(Note *)model;

-(NSMutableArray *) findAll;

@end
