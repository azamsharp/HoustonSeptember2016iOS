//
//  StepperView.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/7/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

-(id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    currentValue = 5;
    
    // create the minus button
    UIButton *minusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    minusButton.backgroundColor = [UIColor purpleColor];
    [minusButton setTitle:@"-" forState:UIControlStateNormal];
    minusButton.frame = CGRectMake(0, 0, 50, 44);
    [minusButton addTarget:self action:@selector(minusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // create the plus button
    UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    plusButton.backgroundColor = [UIColor orangeColor];
    [plusButton setTitle:@"+" forState:UIControlStateNormal];
    plusButton.frame = CGRectMake(225, 0, 50, 44);
    [plusButton addTarget:self action:@selector(plusButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // create the label
    label = [[UILabel alloc] init];
    label.text = [NSString stringWithFormat:@"%d",currentValue];
    label.frame = CGRectMake(100, 0, 50, 44);
    
    [self addSubview:minusButton];
    [self addSubview:label];
    [self addSubview:plusButton];
    
    return self;
}

-(void) plusButtonPressed:(id) sender {
    
    currentValue += 1;
    label.text = [NSString stringWithFormat:@"%d",currentValue];
    
    [self.delegate stepperViewDidValueChanged:currentValue];
}

-(void) minusButtonPressed:(id) sender {
  
    currentValue -= 1;
    label.text = [NSString stringWithFormat:@"%d",currentValue];
    
    [self.delegate stepperViewDidValueChanged:currentValue];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
