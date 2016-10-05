//
//  AnimalViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/4/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "AnimalViewController.h"

@interface AnimalViewController ()

@end

@implementation AnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //r.delegate = self;
    
    self.nameTextField.delegate = self;
    
    Pelican *pelican = [[Pelican alloc] init];
    [pelican fly];
    
}

-(void) randomColor:(UIColor *) color {
    
    
    
    self.nameTextField.backgroundColor = color;
    
    // set the color to the background of the main/root view
    
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
    
    NSLog(@"textFieldShouldReturn");
    
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
