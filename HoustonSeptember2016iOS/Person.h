//
//  Person.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,copy) NSString *firstName;
@property (nonatomic,copy) NSString *lastName;

-(void) walk;
-(void) topSecretMethod; 


-(Person *) initWithName:(NSString *) firstName lastName:(NSString *) lastName;

@end
