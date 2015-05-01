//
//  ProductsDetail.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetail.h"

@implementation ProductsDetail

- (id)initWithName:(NSString *)name andValue:(NSObject *)value {
    self = [super init];
    if (self) {
        [self setName:name value:value andVisibility:YES];
    }
    return self;
}

- (id)initHiddenWithName:(NSString *)name andValue:(NSObject *)value {
    self = [super init];
    if (self) {
        [self setName:name value:value andVisibility:NO];
    }
    return self;
}

- (void)setName:(NSString *)name value:(NSObject *)value andVisibility:(BOOL)visibility {
    self.name = name;
    self.value = value;
    self.isVisible = visibility;
}

@end
