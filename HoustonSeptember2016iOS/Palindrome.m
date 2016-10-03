//
//  Palindrome.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/3/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome

-(BOOL) isPalindrome:(NSString *)inputString {
    
    NSString *reversedString = @"";
    
    for(int i=inputString.length - 1;i>=0;i--) {
        
        char c = [inputString characterAtIndex:i];
        
        NSString *characterAsString = [NSString stringWithFormat:@"%c",c];
        
        reversedString = [reversedString stringByAppendingString:characterAsString];
    }
    
    if([inputString isEqualToString:reversedString]) {
        return YES;
    } else {
        return NO;
    }
}

@end
