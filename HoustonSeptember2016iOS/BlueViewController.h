//
//  BlueViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/17/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BlueViewControllerDelegate <NSObject>

-(void) blueViewControllerDidSendData:(NSString *) text;

@end

@interface BlueViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *nameTextField;
@property (nonatomic,weak) id<BlueViewControllerDelegate> delegate;

@end
