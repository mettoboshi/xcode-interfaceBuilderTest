//
//  ViewController.m
//  interfaceBuilder1
//
//  Created by FUJITA YASUO on 2014/07/13.
//  Copyright (c) 2014年 FUJITA YASUO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)updateValue:(id)sender;
- (IBAction)mySlider2:(UISlider *)sender;

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *colorNames;

@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
- (IBAction)touchWordButton:(UIButton *)sender;


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

  NSString *name = [self fullName:@"sei" lastName:@"mei"];
  NSLog(@"%@", name);
  
  [self countUp];
  [self countUp];
  [self countUp];

  NSLog(@"%d", _counter);
  
  _myTextField.text = @"なるほど";
  _myTextField.textColor = [UIColor greenColor];
  
  
  for (UITextField* fid in _colorNames) {
    fid.placeholder = @"placeholder";
  }
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)switchOnoff:(UISwitch *)sender
{
  if (sender.on == YES) {
    self.view.backgroundColor = [UIColor greenColor];
  } else {
    self.view.backgroundColor = [UIColor whiteColor];
  }

}

- (NSString *) fullName: (NSString *)sei lastName: (NSString *) mei
{
  NSString *sei_mei = [NSString stringWithFormat:@"%@ %@", sei, mei];
  return sei_mei;
}

- (void) countUp
{
  _counter++;
}
  
- (IBAction)updateValue:(id)sender {
  NSLog(@"%.1f %%", _mySlider.value * 100);
}

- (IBAction)mySlider2:(UISlider *)sender {
  NSLog(@"%.1f %%", sender.value * 100);
  _myTextField.text = [NSString stringWithFormat:@"%.1f", sender.value * 100];
}
- (IBAction)touchWordButton:(UIButton *)sender {

  NSString *word;
  switch (sender.tag) {
    case 1:
      word = [NSString stringWithFormat:@"1 desu"];
      break;
    case 2:
      word = [NSString stringWithFormat:@"2 desu"];
      break;
    case 3:
      word = [NSString stringWithFormat:@"3 desu"];
      break;
      
    default:
      break;
  }
  
  _wordLabel.text = word;
  
}
@end
