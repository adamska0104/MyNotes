//
//  Note.h
//  PersistenceLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *content;

-(instancetype)initWithDate:(NSDate *)date content:(NSString *)content;

-(instancetype)init;

@end
