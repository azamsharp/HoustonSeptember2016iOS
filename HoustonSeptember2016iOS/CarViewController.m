//
//  CarViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "CarViewController.h"

@interface CarViewController ()

@end

@implementation CarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] initWithName:@"John" lastName:@"Doe"];
    
    Person *person2 = [[Person alloc] init];
    person2.firstName = @"Something";
    person2.lastName = @"Something";
    
    Ferrari *myFerrari = [[Ferrari alloc] initWithTurbo:YES];
    
   // myFerrari.isTurboOn = YES;
    
    NSString *myString = @"some string";
    
    Car *myCar = [[Car alloc] init];
    myCar.make = @"Honda";
    
    [myCar warmUpEngine];
    [myCar start];
    
    Car *someOtherCar = myCar;
    someOtherCar.make = @"BMW";
    
    [someOtherCar start];
    
    NSLog(@"%@",myCar.make);
    
//    int count = 10;
//    
//    Car *car = [[Car alloc] init];
//    
//    car.make = @"Honda";
//    car.model = @"Accord";
//    
//    [car start];
//    
//    [car stop];
//    
//    Car *someOtherCar = [[Car alloc] init];
//    
//    someOtherCar.make = @"Honda";
//    someOtherCar.model = @"Accord";
//    
//    [someOtherCar start];
//    
//   // car.make = @"Honda";
//   // car.model = @"Accord";
    

    
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
