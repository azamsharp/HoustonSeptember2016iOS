//
//  NSUserDefaultsViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "NSUserDefaultsViewController.h"

@interface NSUserDefaultsViewController ()

@end

@implementation NSUserDefaultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) saveButtonPressed {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:self.nameTextField.text forKey:@"Name"];
    
    [userDefaults synchronize];
    
}

-(IBAction)fetchButtonPressed:(id)sender {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString *name = [userDefaults stringForKey:@"Name"];
    
    self.nameLabel.text = name;
    
     //NSString *name = (NSString *) [userDefaults valueForKey:@"Name"];
    
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
