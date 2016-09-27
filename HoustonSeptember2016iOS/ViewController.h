//
//  ViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/26/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int count;
}

@property (nonatomic,assign) int numberOfStudents;

@property (nonatomic,copy) NSString *someString;

@property (nonatomic,weak) IBOutlet UITextField *greetingTextField;
@property (nonatomic,weak) IBOutlet UILabel *greetingLabel;

@end


