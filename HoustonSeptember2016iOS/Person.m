//
//  Person.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "Person.h"

@implementation Person

-(Person *) initWithName:(NSString *)firstName lastName:(NSString *)lastName {
    
    self = [super init];
    self.firstName = firstName;
    self.lastName = lastName;
    
    return self;
}


@end
