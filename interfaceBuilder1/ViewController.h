//
//  ViewController.h
//  interfaceBuilder1
//
//  Created by FUJITA YASUO on 2014/07/13.
//  Copyright (c) 2014年 FUJITA YASUO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//property
@property (assign) NSInteger counter;

//method
- (NSString *) fullName: (NSString *)sei lastName: (NSString *) mei;
- (void) countUp;

@end
