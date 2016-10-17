//
//  SplashScreenViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/13/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "SplashScreenViewController.h"

@interface SplashScreenViewController ()

@end

@implementation SplashScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    BOOL isSplashScreenAlreadyShown = [userDefaults boolForKey:@"IsSplashScreenLoaded"];
    
    if(isSplashScreenAlreadyShown == NO) {
        
        [self performAnimation];
    }
}

-(void) performAnimation {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:YES forKey:@"IsSplashScreenLoaded"];
    [userDefaults synchronize];
    
    [UIView animateWithDuration:5.0 animations:^{
        // what to do in animation
        self.welcomeMessageLabel.alpha = 1.0;
    } completion:^(BOOL finished) {
        // what to do when animation completes
        
        [UIView animateWithDuration:5.0 animations:^{
            self.welcomeMessageLabel.alpha = 0.0;
            
        }];
        
    }];
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
