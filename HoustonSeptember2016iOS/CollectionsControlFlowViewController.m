//
//  CollectionsControlFlowViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/29/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "CollectionsControlFlowViewController.h"

@interface CollectionsControlFlowViewController ()

@end

@implementation CollectionsControlFlowViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
    NSString *word = @"MADAM";
    
    for(int i =0; i<word.length;i++) {
        
        char c = [word characterAtIndex:i];
        
        NSLog(@"%c",c);
        
    }
    
    NSArray *numbers = [[NSArray alloc] init];
    
    Car *car = [[Car alloc] init];
    
    NSMutableArray *alphabets = [[NSMutableArray alloc] init];
    [alphabets addObject:@"Alex"];
    [alphabets addObject:@"Maria"];
    [alphabets addObject:@"John"];
    [alphabets addObject:@"David"];
    [alphabets addObject:@"Steve"];
    
   // [alphabets addObject:car];
    
    //NSMutableArray *names = [NSMutableArray arrayWithObjects:@"Alex",@"Maria",@"John",@"David",car, nil];
    
    //alphabets[2] = @"Linda";
    
    
    //NSLog(@"%@",alphabets[index]);
    
    for(int i = 0;i<alphabets.count;i++) {
      
       // Car *car = [[Car alloc] init];
        
        NSLog(@"index = %d %@",i,alphabets[i]);
        
       // NSLog(@"value of numberOfDogs %d",numberOfDogs);
        
    }
    
    
    NSLog(@"%@",alphabets[0]);
    NSLog(@"%@",alphabets[1]);
    NSLog(@"%@",alphabets[2]);
    NSLog(@"%@",alphabets[3]);
    
    
    NSString *name = alphabets[2];
    
    // Control Flow
    
//    int age = 18;
//    
//    if(age < 18) {
//        self.messagesLabel.text = @"NO ALLOWED";
//    }
//    
//    if(age >= 18) {
//        self.messagesLabel.text = @"ALLOWED";
//    }
//    
//    
//    
    
}

// slider action

-(IBAction) sliderValueChanged:(UISlider *) slider {
    
    self.messagesLabel.text = [NSString stringWithFormat:@"%f",self.mySlider.value];
    
    NSLog(@"slider value changed");
    
    NSString *word = @"MADAM";
    
    for(int i =0; i<word.length;i++) {
        
        char c = [word characterAtIndex:i];
        
        NSLog(@"%c",c);
        
    }
    
    
}


-(IBAction) verifyButtonPressed {
    
    NSString *name = @"joHn";
    
    name = name.lowercaseString;  // john
    
    if([name isEqual: @"John".lowercaseString]) {
        self.messagesLabel.text = @"COME IN";
    }
    else {
        self.messagesLabel.text = @"NOT WELCOME";
    }
    
    
    
    
    
    
    int age = self.ageTextField.text.intValue;

    if(age < 18 || age > 65) {
        self.messagesLabel.text = @"YOU ARE TOO YOUNG OR TOO OLD";
    }
    else if(age == 18) {
        self.messagesLabel.text = @"YOU ARE ABOUT RIGHT";
    }
    
//    else {
//        self.messagesLabel.text = @"NOT ALLOWED";
//    }
    
//    if(age < 18) {
//        self.messagesLabel.text = @"NO ALLOWED";
//    }
//    
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
