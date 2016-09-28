//
//  Assignment2ReviewViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "Assignment2ReviewViewController.h"

@interface Assignment2ReviewViewController ()

@end

@implementation Assignment2ReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *firstNumber = @"5";
    int value1 = firstNumber.intValue;
    
    NSString *value1AsString = [NSString stringWithFormat:@"%d",value1];
}

-(int) add:(int) firstNumber secondNumber:(int) secondNumber {
    return firstNumber + secondNumber;
}

-(IBAction) addButtonPressed {
    
    int result = [self add:12 secondNumber:45];
    
    NSString *firstNumber = self.firstNumberTextField.text;
    
    int value1 = self.firstNumberTextField.text.intValue;
    //int value2 = self.secondNumberTextField.text.intValue;
    
    float pi = 3.14289878;
    
    NSString *piAsString = [NSString stringWithFormat:@"I am %d years old and I live on street number %d",23,1200];
    
   // int result = [self add:value1 secondNumber:value2];
    
   // self.resultsLabel.text = [NSString stringWithFormat:@"%d",result];
    
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
