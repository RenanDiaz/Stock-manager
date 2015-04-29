//
//  ProductsDetails.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetails.h"

@implementation ProductsDetails

- (NSInteger)numberOfBasicDetails {
    return 4;
}

- (NSInteger)numberOfAttributes {
    return [self numberOfBasicDetails] + [self.additionalAttributes count];
}

@end
