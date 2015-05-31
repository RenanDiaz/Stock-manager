//
//  ProductsDetails.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 5/1/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetails.h"

@implementation ProductsDetails

- (id)init
{
    self = [super init];
    if (self)
    {
        NSDictionary *productsInitialDetails = [NSDictionary dictionaryWithObjectsAndKeys:
                                                 [[ProductsDetail alloc] initWithName:@"Name" andValue:@""], @"Name",
                                                 [[ProductsDetail alloc] initWithName:@"Code" andValue:@""], @"Code",
                                                 [[ProductsDetail alloc] initWithName:@"Cost" andValue:[[NSDecimalNumber alloc] init]], @"Cost",
                                                 [[ProductsDetail alloc] initWithName:@"Price" andValue:[[NSDecimalNumber alloc] init]], @"Price",
                                                 [[ProductsDetail alloc] initHiddenWithName:@"Is inactive" andValue:@NO], @"IsInactive", nil];
        
        self = [NSMutableDictionary dictionaryWithDictionary:productsInitialDetails];
    }
    return self;
}

- (int)numberOfVisibleDetails {
    int visibleDetails = 0;
    for (ProductsDetail *productsDetail in self) {
        if (productsDetail.isVisible) {
            visibleDetails++;
        }
    }
    return visibleDetails;
}

- (NSNumber *)numberOfAttributes {
    return [NSNumber numberWithInt:[self numberOfVisibleDetails]];
}

- (ProductsDetail *)member:(NSString *)membersName {
    for (ProductsDetail *productsDetail in self) {
        if ([productsDetail.name isEqualToString:membersName]) {
            return productsDetail;
        }
    }
    
    return nil;
}

@end
