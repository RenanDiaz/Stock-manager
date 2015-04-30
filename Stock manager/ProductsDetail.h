//
//  ProductsDetail.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/29/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductsDetail : NSObject

@property NSString *name;
@property NSObject *value;
@property BOOL isVisible;

- (id)initWithName:(NSString *)name andValue:(NSObject *)value;
- (id)initHiddenWithName:(NSString *)name andValue:(NSObject *)value;

@end
