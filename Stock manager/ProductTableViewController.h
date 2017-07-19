//
//  ProductTableViewController.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 5/31/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductTableViewController : UITableViewController <UITextFieldDelegate>
@property (assign, nonatomic) NSUInteger maximumFractionDigits;
@property (strong, nonatomic) NSString *decimalSeparator;
@property (strong, nonatomic) NSString *currencySymbol;
@end
