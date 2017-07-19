//
//  Product.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSDecimalNumber *cost;
@property (nonatomic, strong) NSDecimalNumber *price;
@property (nonatomic, getter=isVisible) BOOL visible;
@property (nonatomic, getter=isReturnable) BOOL returnable;

- (id)initWithName:(NSString *)name code:(NSString *)code cost:(NSDecimalNumber *)cost price:(NSDecimalNumber *)price;
- (NSArray *)productsDetails;
+ (NSUInteger)numberOfAttributes;
+ (NSArray *)productDetailsLabels;
+ (NSArray *)productDetailsTypes;
@end
