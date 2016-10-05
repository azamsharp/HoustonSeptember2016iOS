//
//  AnimalViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/4/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cat.h" 
#import "Pelican.h" 

@interface AnimalViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic,weak) IBOutlet UITextField *nameTextField;

@end
