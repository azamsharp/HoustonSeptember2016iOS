//
//  StepperView.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/7/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate <NSObject>

-(void) stepperViewDidValueChanged:(int) value;

@end

IB_DESIGNABLE
@interface StepperView : UIView
{
    UILabel *label;
    int currentValue; 
}

@property (nonatomic,weak) id<StepperViewDelegate> delegate;

@end
