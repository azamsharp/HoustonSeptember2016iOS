//
//  Car.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic,copy) NSString *make;
@property (nonatomic,copy) NSString *model;

-(void) start;
-(void) stop;
-(void) warmUpEngine; 


@end
