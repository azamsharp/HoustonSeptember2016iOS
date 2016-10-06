//
//  SwitchView.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/6/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "SwitchView.h"



@implementation SwitchView

-(id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    
    [button setTitle:@"OFF" forState:UIControlStateNormal];
    
  //  [button setTitle:@"HELLO" forState:UIControlStateDisabled];
    
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:button];
    return self;
}

-(void) buttonPressed:(UIButton *) button {
    
    NSString *buttonText = button.titleLabel.text;
    
    if([buttonText isEqualToString:@"ON"]) {
        
        [button setTitle:@"OFF" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor redColor];
        
        // notify all the delegates that the switchView has changed
        [self.delegate switchViewDidChangeStatus:@"OFF"];
        
        
    } else {
        
         [button setTitle:@"ON" forState:UIControlStateNormal];
         button.backgroundColor = [UIColor greenColor];
        
        [self.delegate switchViewDidChangeStatus:@"ON"];
        
    }
    
    NSLog(@"buttonPressed");
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
