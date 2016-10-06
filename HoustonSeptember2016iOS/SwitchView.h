//
//  SwitchView.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/6/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchViewDelegate <NSObject>

-(void) switchViewDidChangeStatus:(NSString *) status;

@end

@interface SwitchView : UIView

@property (nonatomic,weak) id<SwitchViewDelegate> delegate;

@end
