//
//  ViewController.m
//  interfaceBuilder1
//
//  Created by FUJITA YASUO on 2014/07/13.
//  Copyright (c) 2014年 FUJITA YASUO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

  NSDate *theDate = [[NSDate alloc] init];
  NSLog(@"date : %@", theDate);
  
  NSDate *theTime = [[NSDate alloc] initWithTimeIntervalSinceNow:30];
  NSLog(@"date : %@", theTime);
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)switchOnoff:(UISwitch *)sender {
  if (sender.on == YES) {
    self.view.backgroundColor = [UIColor greenColor];
  } else {
    self.view.backgroundColor = [UIColor whiteColor];
  }

}

@end
