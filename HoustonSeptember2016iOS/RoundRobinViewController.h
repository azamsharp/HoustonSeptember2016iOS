//
//  RoundRobinViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/3/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reciple.h"
#import "Incrediant.h" 

@interface RoundRobinViewController : UIViewController
@property(nonatomic, weak) IBOutlet UITextField *foodText;
@property (nonatomic,weak) IBOutlet UILabel     *foodLabel;



@end
