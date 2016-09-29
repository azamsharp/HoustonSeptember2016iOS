//
//  ClassesObjectsAssignmentReviewViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/29/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ClassesObjectsAssignmentReviewViewController.h"

@interface ClassesObjectsAssignmentReviewViewController ()

@end

@implementation ClassesObjectsAssignmentReviewViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    calculator = [[Calculator alloc] init];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) sendEmail {
    
    Person *person = [[Person alloc] init];
    person.firstName = @"John";
    
    [person walk];
    
    [person topSecretMethod];
}

-(IBAction) subtractButtonPressed {
    
    NSString *input1 = @"5";
    NSString *input2 = @"15";
    
    double value1 = input1.doubleValue;
    double value2 = input2.doubleValue;
    
    
  //  double result = [calculator subtract:12 secondNumber:23];

    
}

-(IBAction) addButtonPressed {
    
    NSString *input1 = @"5";
    NSString *input2 = @"15";
    
    
    double value1 = input1.doubleValue;
    double value2 = input2.doubleValue;
    
    double result = [calculator add:12 secondNumber:23];
    
    // convert result into NSSTring
    
    // display NSString into the label
    
    
    
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
