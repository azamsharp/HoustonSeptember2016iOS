//
//  AutolayoutViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/18/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "AutolayoutViewController.h"

@interface AutolayoutViewController ()

@end

@implementation AutolayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.backgroundColor = [UIColor blueColor];
   
    [self.view addSubview:blueView];
    
    NSLayoutConstraint *horizontalConstraint = [blueView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    
    NSLayoutConstraint *verticalConstraint = [blueView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor];
    
    NSLayoutConstraint *widthConstraint = [blueView.widthAnchor constraintEqualToConstant:200];
    
    NSLayoutConstraint *heightConstraint = [blueView.heightAnchor constraintEqualToConstant:200];
    
    [NSLayoutConstraint activateConstraints:@[horizontalConstraint,verticalConstraint,widthConstraint,heightConstraint]];
    
}

-(IBAction) buttonPressed:(id) sender {
    
    UIButton *button = (UIButton *) sender;
    
    NSString *text = button.titleLabel.text;
    
    if([text isEqualToString:@"X"]) {
        [button setTitle:@"This is a long label" forState:UIControlStateNormal];
    } else {
        [button setTitle:@"X" forState:UIControlStateNormal];
        
    }
    
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
