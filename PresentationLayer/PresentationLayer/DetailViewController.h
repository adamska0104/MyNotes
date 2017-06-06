//
//  DetailViewController.h
//  PresentationLayer
//
//  Created by adam on 2017/6/6.
//  Copyright © 2017年 ark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

