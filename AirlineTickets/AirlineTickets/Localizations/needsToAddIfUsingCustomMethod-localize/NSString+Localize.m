//
//  NSString+Localize.m
//  wehfuio
//
//  Created by Rodion Molchanov on 06.02.2021.
//

#import "NSString+Localize.h"

@implementation NSString (Localize)

- (NSString *)localize {
    return NSLocalizedString(self, "");
}

// to call:
// [@"key" localize]

@end
