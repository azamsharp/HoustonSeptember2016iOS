//
//  ContainerViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/17/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueViewController.h" 
#import "OrangeViewController.h"

@interface ContainerViewController : UIViewController<BlueViewControllerDelegate, OrangeViewControllerDelegate>

@property (nonatomic,strong) BlueViewController *blueViewController;
@property (nonatomic,strong) OrangeViewController *orangeViewController; 

@end
