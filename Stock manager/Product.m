//
//  Product.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Product.h"

@implementation Product

@synthesize productsDetails;

- (id)initWithName:(NSString *)name code:(NSString *)code cost:(NSDecimalNumber *)cost price:(NSDecimalNumber *)price {
    self = [super init];
    if (self) {
        productsDetails = [[ProductsDetails alloc] initWithCapacity:5];
        for (ProductsDetail *productsDetail in productsDetails) {
            if ([productsDetail.name isEqualToString:@"Name"]) {
                productsDetail.detailsValue = name;
            }
        }
        /*
        productsDetails.name.value = name;
        productsDetails.code.value = code;
        productsDetails.cost.value = cost;
        productsDetails.price.value = price;
        productsDetails.isInactive.value = @NO;
         */
    }
    return self;
}

@end
