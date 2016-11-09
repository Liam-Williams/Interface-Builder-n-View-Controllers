//
//  PurpleViewController.m
//  viewcontrollers
//
//  Created by Liam Williams on 2016-11-09.
//  Copyright © 2016 Lighthouse. All rights reserved.
//

#import "PurpleViewController.h"
#import "YellowViewController.h"

@interface PurpleViewController ()

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
//  YellowViewController *yvc = [YellowViewController new];
//  [self presentViewController:yvc animated:true completion:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

 //In a storyboard-based application, you will often want to do a little preparation before navigation
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
  if ([identifier isEqualToString:@"Transition1"]) {
    return false;
  } else {
    return true;
  }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  
  YellowViewController *vc = [segue destinationViewController];
  vc.colourForMyView = [UIColor brownColor];
}

@end
