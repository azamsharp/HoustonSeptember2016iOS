//
//  Ferrari.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 9/28/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ferrari : NSObject

@property (nonatomic,assign) BOOL isTurboOn;

-(Ferrari *) initWithTurbo:(BOOL) isTurboOn;

@end
