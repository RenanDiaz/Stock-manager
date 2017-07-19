//
//  Product.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Product.h"

@implementation Product

- (id)initWithName:(NSString *)name code:(NSString *)code cost:(NSDecimalNumber *)cost price:(NSDecimalNumber *)price
{
    self = [super init];
    if (self) {
        self.name = name;
        self.code = code;
        self.cost = cost;
        self.price = price;
        self.visible = YES;
        self.returnable = YES;
    }
    return self;
}

- (NSArray *)productsDetails
{
    return @[self.name, self.code, [NSString stringWithFormat:@"%@", self.cost], [NSString stringWithFormat:@"%@", self.price], [NSString stringWithFormat:@"%d", self.isVisible], [NSString stringWithFormat:@"%d", self.isReturnable]];
}

# pragma mark - Class methods

+ (NSUInteger)numberOfAttributes
{
    return [[Product productDetailsLabels] count];
}

+ (NSArray *)productDetailsLabels
{
    return @[[NSString localizedStringWithFormat:NSLocalizedString(@"Name", @"Product's name")],
             [NSString localizedStringWithFormat:NSLocalizedString(@"Code", @"Product's code")],
             [NSString localizedStringWithFormat:NSLocalizedString(@"Cost", @"Product's cost")],
             [NSString localizedStringWithFormat:NSLocalizedString(@"Price", @"Product's price")],
             [NSString localizedStringWithFormat:NSLocalizedString(@"Active", @"Product's state")],
             [NSString localizedStringWithFormat:NSLocalizedString(@"Returnable", @"Product's returnability")]];
}

+ (NSArray *)productDetailsTypes
{
    return @[@"String", @"String", @"Currency", @"Currency", @"Boolean", @"Boolean"];
}

@end
