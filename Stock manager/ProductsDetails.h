//
//  ProductsDetails.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductsDetails : NSObject

@property NSString *name;
@property NSString *code;
@property NSDecimalNumber *cost;
@property NSDecimalNumber *price;
@property BOOL activity;
@property NSMutableArray *additionalAttributes;

- (NSInteger)numberOfAttributes;

@end
