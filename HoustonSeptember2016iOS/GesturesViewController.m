//
//  GesturesViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/7/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "GesturesViewController.h"

@interface GesturesViewController ()

@end

@implementation GesturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:blueView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [blueView addGestureRecognizer:tap];
    [blueView addGestureRecognizer:swipeUp];
    
    // animation
    [UIView animateWithDuration:5.0 animations:^{
       // code
        
        blueView.center = CGPointMake(100, 600);
        blueView.alpha = 0.0;
        
    }];
    
}

-(void) swipeUp:(id) sender {
    
    // casting the sender to the swipe gesture recognizer
    //UISwipeGestureRecognizer *swipe = (UISwipeGestureRecognizer *) sender;
    
    NSLog(@"swipe up!");
    
}

-(void) tapped:(id) sender {
    
    // casting the sender to the tap gesture recognizer
    //UITapGestureRecognizer *tap = (UITapGestureRecognizer *) sender;
    
    
    NSLog(@"tapped!");
    
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
