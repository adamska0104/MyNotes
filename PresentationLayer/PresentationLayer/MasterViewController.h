//
//  MasterViewController.h
//  PresentationLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <BusinessLogicLayer/NoteBL.h>
#import <PersistenceLayer/Note.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

