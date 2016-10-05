//
//  Bird.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/4/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Flyable

-(void) fly;

@end

@protocol Hunting

-(void) hunt; 

@end

@interface Bird : NSObject

-(void) walk;
-(void) eat;
-(void) sleep; 

@end
