//
//  OrangeViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/17/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OrangeViewControllerDelegate <NSObject>

-(void) orangeViewControllerDidSendData:(NSString *) text;

@end


@interface OrangeViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic,weak) IBOutlet UITextField *nameTextField; 
@property (nonatomic,weak) IBOutlet UILabel *resultsLabel;

@property (nonatomic,weak) id<OrangeViewControllerDelegate> delegate; 

@end
