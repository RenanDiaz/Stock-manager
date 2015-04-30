//
//  Product.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Product.h"

@implementation Product

- (id)init {
    self = [super init];
    if (self) {
        self.productsDetails = [[ProductsDetails alloc] init];
    }
    return self;
}

- (void)setName:(NSString *)name {
    [self.productsDetails.name setValue:name];
}

- (NSString *)getName {
    return (NSString *)[self.productsDetails.name value];
}

- (void)setCode:(NSString *)code {
    [self.productsDetails.code setValue:code];
}

- (NSString *)getCode {
    return (NSString *)[self.productsDetails.code value];
}

- (void)setCost:(NSDecimalNumber *)cost {
    [self.productsDetails.cost setValue:cost];
}

- (NSDecimalNumber *)getCost {
    return (NSDecimalNumber *)[self.productsDetails.cost value];
}

- (void)setPrice:(NSDecimalNumber *)price {
    [self.productsDetails.price setValue:price];
}

- (NSDecimalNumber *)getPrice {
    return (NSDecimalNumber *)[self.productsDetails.price value];
}

- (void)setIsInactive:(NSNumber *)isInactive {
    [self.productsDetails.isInactive setValue:isInactive];
}

- (NSNumber *)getIsInactive {
    return (NSNumber *)[self.productsDetails.isInactive value];
}

@end
