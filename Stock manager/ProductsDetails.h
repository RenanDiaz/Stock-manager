//
//  ProductsDetails.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductsDetail.h"

@interface ProductsDetails : NSObject

@property ProductsDetail *name;
@property ProductsDetail *code;
@property ProductsDetail *cost;
@property ProductsDetail *price;
@property ProductsDetail *isInactive;
@property int *additionalAttributes;

- (NSNumber *)numberOfAttributes;

@end
