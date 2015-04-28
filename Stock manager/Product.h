//
//  Product.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property NSString *name;
@property NSNumber *code;
@property NSDecimalNumber *cost;
@property NSDecimalNumber *price;
@property BOOL activity;
@property NSMutableArray *additionalAttributes;

@end
