//
//  ViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/26/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    count = 10;
    
    NSString *greeting = @"Hello World";
    
    greeting = @"Bye World";
    
    [self multiplyBy2:4];
    
    [self multiplyBy2:6];
    
    [self multiplyBy2:12];
    
    [self sayGreeting:@"Hello World"];
    
    [self sayGreeting:@"Something else"];
    
    [self calculateAge:@"03/34/2010" personsHeight:5.34];
    
   // [self add:<#(int)#> number2:<#(int)#> friendlyNumber3:<#(int)#>]
}

-(int) calculateAge:(NSString *) dateOfBirth personsHeight:(float) height {
    
    return height * 23;
    
    int age = height * 23;
    return age;
}

-(int) add:(int) number1 number2:(int) number2 friendlyNumber3:(int) number3 {
   
    int result = number1 + number2 + number3;
    return result;
}

-(void) processFax {
    
}

-(void) sayGreeting:(NSString *) message {
    
    NSLog(message);
    
}

-(void) multiplyBy2:(int) number {
    
    int result = number * 2;
}

-(void) sendEmails {
    
    // Write some code to get the email addresses
    // write some code to attach emails
    // write some code to send emails
    
}

-(IBAction) someOtherButton {
    
    [self sendEmails];
    [self processFax];
}


-(IBAction) anotherButtonPressed {
    
   
}

-(IBAction) submitButtonPressed {
   
    NSString *someString = @"";
    
    count = 50; 
    
    self.greetingLabel.text = self.greetingTextField.text;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
