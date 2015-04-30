//
//  Product.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductsDetails.h"

@interface Product : NSObject

@property ProductsDetails *productsDetails;

- (void)setName:(NSString *)name;
- (NSString *)getName;
- (void)setCode:(NSString *)code;
- (NSString *)getCode;
- (void)setCost:(NSDecimalNumber *)cost;
- (NSDecimalNumber *)getcost;
- (void)setPrice:(NSDecimalNumber *)price;
- (NSDecimalNumber *)getprice;
- (void)setIsInactive:(NSNumber *)isInactive;
- (NSNumber *)getIsInactive;

@end
