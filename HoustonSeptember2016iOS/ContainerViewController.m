//
//  ContainerViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/17/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSArray *childViewControllers = self.childViewControllers;
    
    self.blueViewController = childViewControllers[0];
    self.blueViewController.delegate = self;
    
    self.orangeViewController = childViewControllers[1];
    self.orangeViewController.delegate = self; 
}

-(void) orangeViewControllerDidSendData:(NSString *) text {
    
}

-(void) blueViewControllerDidSendData:(NSString *)text {
    
    self.orangeViewController.resultsLabel.text = text;
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
