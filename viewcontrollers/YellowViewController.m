//
//  YellowViewController.m
//  viewcontrollers
//
//  Created by Liam Williams on 2016-11-09.
//  Copyright © 2016 Lighthouse. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.colourView.backgroundColor = self.colourForMyView;
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  YellowViewController *yc = [[YellowViewController alloc] initWithNibName:@"" bundle:nil];
  
  [self presentViewController:yc animated:false completion:nil];
  
  if (animated) {
    
  }
}

- (void) viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
}

- (void) viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonPressed:(UIButton *)sender {
  NSLog(@"Wohoo! Button pressed");
  self.colourView.backgroundColor = [UIColor yellowColor];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
  
}

@end
