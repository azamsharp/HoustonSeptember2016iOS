//
//  CollectionsControlFlowViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/29/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h" 

@interface CollectionsControlFlowViewController : UIViewController

@property (nonatomic,weak) IBOutlet UISlider *mySlider; 

@property (nonatomic,weak) IBOutlet UILabel *messagesLabel;
@property (nonatomic,weak) IBOutlet UITextField *ageTextField; 

@end
