//
//  NotificationView.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/10/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView

-(id) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.masksToBounds = YES; 
    
}


@end
