//
//  ProductsDetails.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetails.h"

@implementation ProductsDetails

- (id)init
{
    self = [super init];
    if (self)
    {
        self.name = [[ProductsDetail alloc] initWithName:@"Name" andValue:@""];
        self.code = [[ProductsDetail alloc] initWithName:@"Code" andValue:@""];
        self.cost = [[ProductsDetail alloc] initWithName:@"Cost" andValue:[[NSDecimalNumber alloc] init]];
        self.price = [[ProductsDetail alloc] initWithName:@"Price" andValue:[[NSDecimalNumber alloc] init]];
        self.isInactive = [[ProductsDetail alloc] initHiddenWithName:@"Is inactive" andValue:@NO];
    }
    return self;
}

- (int)numberOfBasicDetails {
    return 4;
}

- (NSNumber *)numberOfAttributes {
    return [NSNumber numberWithInt:*([self numberOfBasicDetails] + [self additionalAttributes])];
}

@end
