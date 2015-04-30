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
@property Product *tappedProduct;

@end

@implementation ProductsTableViewController

- (void)loadInitialData {
    Product *product1 = [[Product alloc] init];
    [product1 setName:@"Coca Cola"];
    [product1 setCode:@"0001"];
    [self.products addObject:product1];
    Product *product2 = [[Product alloc] init];
    [product2 setName:@"Kist Fresa"];
    [product2 setCode:@"1254"];
    [self.products addObject:product2];
    Product *product3 = [[Product alloc] init];
    [product3 setName:@"Fresca"];
    [product3 setCode:@"1234"];
    [self.products addObject:product3];
}

- (IBAction)unwindToProducts:(UIStoryboardSegue *)segue {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.products = [[NSMutableArray alloc] init];
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
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductsPrototypeCell" forIndexPath:indexPath];
    Product *product = [self.products objectAtIndex:indexPath.row];
    cell.textLabel.text = [product getName];
    cell.detailTextLabel.text = [product getCode];
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
    if ([[segue identifier] isEqualToString:@"EditProductSegue"]) {
        EditProductTableViewController *controller = (EditProductTableViewController *)[segue destinationViewController];
        [controller setProduct:self.tappedProduct];
    }
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.tappedProduct = [self.products objectAtIndex:indexPath.row];
}

@end
