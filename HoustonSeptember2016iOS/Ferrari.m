//
//  Ferrari.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "Ferrari.h"

@implementation Ferrari

-(Ferrari *) initWithTurbo:(BOOL)isTurboOn {
    
    self = [super init];
    self.isTurboOn = isTurboOn;
    return self;
}

@end
