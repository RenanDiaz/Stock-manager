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

@property NSMutableArray *products;

@end

@implementation ProductsTableViewController

@synthesize products;

- (void)loadInitialData {
    Product *product1 = [[Product alloc] initWithName:@"Coca Cola" code:@"0001" cost:[NSDecimalNumber decimalNumberWithString:@"5"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    [products addObject:product1];
    Product *product2 = [[Product alloc] initWithName:@"Kist Fresa" code:@"1254" cost:[NSDecimalNumber decimalNumberWithString:@"5"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    [products addObject:product2];
    Product *product3 = [[Product alloc] initWithName:@"Fresca" code:@"1234" cost:[NSDecimalNumber decimalNumberWithString:@"5"] price:[NSDecimalNumber decimalNumberWithString:@"6.0"]];
    [products addObject:product3];
}

- (IBAction)unwindToProducts:(UIStoryboardSegue *)segue {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    products = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductsPrototypeCell" forIndexPath:indexPath];
    Product *product = [products objectAtIndex:indexPath.row];
    cell.textLabel.text = (NSString *)[[product.productsDetails member:@"Name"] detailsValue];
    cell.detailTextLabel.text = (NSString *)[[product.productsDetails member:@"Code"] detailsValue];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"EditProductSegue"]) {
        EditProductTableViewController *controller = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Product *selectedProduct = [products objectAtIndex:indexPath.row];
        controller.product = selectedProduct;
    }
}

/*
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
*/

@end
