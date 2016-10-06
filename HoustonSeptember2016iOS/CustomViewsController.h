//
//  CustomViewsController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/6/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwitchView.h" 

@interface CustomViewsController : UIViewController<SwitchViewDelegate>
{
    
}

@property (nonatomic,weak) IBOutlet UILabel *outputLabel;

@end
