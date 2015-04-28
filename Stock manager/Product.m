//
//  Product.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Product.h"

@implementation Product

- (NSInteger)numberOfBasicDetails {
    return 4;
}

- (NSInteger)numberOfAttributes {
    return [self numberOfBasicDetails] + [self.additionalAttributes count];
}

@end
