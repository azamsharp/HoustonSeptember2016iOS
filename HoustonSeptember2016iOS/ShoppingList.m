//
//  ShoppingList.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/10/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ShoppingList.h"

@implementation ShoppingList

-(id) initWithCoder:(NSCoder *)aDecoder {
    
    self.name = [aDecoder decodeObjectForKey:@"name"];
    
    //self.name = (NSString *) [aDecoder valueForKey:@"name"];
    return self;
}

-(void) encodeWithCoder:(NSCoder *)coder {
    
    [coder encodeObject:self.name forKey:@"name"];
   // [coder setValue:self.name forKey:@"name"];
}

@end
