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

- (id)initWithName:(NSString *)name code:(NSString *)code cost:(NSDecimalNumber *)cost price:(NSDecimalNumber *)price;

@end
