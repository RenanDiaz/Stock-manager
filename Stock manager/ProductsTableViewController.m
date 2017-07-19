//
//  ProductTableViewController.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "Product.h"
#import "EditProductTableViewController.h"

@interface ProductsTableViewController ()

@property (nonatomic, strong) NSMutableArray *products;

@end

@implementation ProductsTableViewController

- (void)loadInitialData {
    Product *product1 = [[Product alloc] initWithName:@"Coca Cola" code:@"0001" cost:[NSDecimalNumber decimalNumberWithString:@"5.52"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    [self.products addObject:product1];
    Product *product2 = [[Product alloc] initWithName:@"Kist Fresa" code:@"1254" cost:[NSDecimalNumber decimalNumberWithString:@"5"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    [self.products addObject:product2];
    Product *product3 = [[Product alloc] initWithName:@"Fresca" code:@"1234" cost:[NSDecimalNumber decimalNumberWithString:@"5"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    product3.visible = NO;
    [self.products addObject:product3];
}

- (NSMutableArray *)products
{
    if (!_products) self.products = [[NSMutableArray alloc] init];
    return _products;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadInitialData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductsPrototypeCell" forIndexPath:indexPath];
    Product *product = [self.products objectAtIndex:indexPath.row];
    cell.textLabel.text = product.name;
    cell.detailTextLabel.text = product.code;
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EditProductSegue"]) {
        if ([segue.destinationViewController isKindOfClass:[EditProductTableViewController class]]) {
            EditProductTableViewController *controller = (EditProductTableViewController *)[segue destinationViewController];
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            Product *selectedProduct = [self.products objectAtIndex:indexPath.row];
            controller.product = selectedProduct;
        }
    }
}

- (IBAction)unwindToProducts:(UIStoryboardSegue *)segue
{
    
}

@end
