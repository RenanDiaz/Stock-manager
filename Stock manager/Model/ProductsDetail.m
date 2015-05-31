//
//  ProductsDetail.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetail.h"

@implementation ProductsDetail

@synthesize name, detailsValue, isVisible;

- (id)initWithName:(NSString *)name_ andValue:(NSObject *)value_ {
    self = [super init];
    if (self) {
        [self setName:name_ value:value_ andVisibility:YES];
    }
    return self;
}

- (id)initHiddenWithName:(NSString *)name_ andValue:(NSObject *)value_ {
    self = [super init];
    if (self) {
        [self setName:name_ value:value_ andVisibility:NO];
    }
    return self;
}

- (void)setName:(NSString *)name_ value:(NSObject *)value_ andVisibility:(BOOL)visibility {
    name = name_;
    detailsValue = value_;
    isVisible = visibility;
}

@end
