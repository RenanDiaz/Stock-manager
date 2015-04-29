//
//  EditProductTableViewController.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsDetailsTableViewController.h"

@interface EditProductTableViewController : ProductsDetailsTableViewController

@property Product *product;

- (void)setProduct:(Product *)product;

@end
