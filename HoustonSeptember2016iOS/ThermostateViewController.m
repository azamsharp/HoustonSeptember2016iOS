//
//  ThermostateViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ThermostateViewController.h"

@interface ThermostateViewController ()

@end

@implementation ThermostateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) segmentedControlValueChanged:(UISegmentedControl *) segmentedControl {
    
    NSLog(@"%d",segmentedControl.selectedSegmentIndex);
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

@end
