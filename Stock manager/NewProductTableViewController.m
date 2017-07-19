//
//  NewProductTableViewController.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 5/1/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "NewProductTableViewController.h"
#import "Product.h"

@implementation NewProductTableViewController

#pragma mark - Table view data source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    NSString *detailsType = [[Product productDetailsTypes] objectAtIndex:indexPath.row];
    if ([detailsType isEqualToString:@"Boolean"]) {
        UISwitch *activeSwitch = [[UISwitch alloc] init];
        activeSwitch.on = YES;
        cell.accessoryView = activeSwitch;
    } else {
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
        textField.textAlignment = NSTextAlignmentRight;
        if ([detailsType isEqualToString: @"Currency"]) {
            textField.keyboardType = UIKeyboardTypeNumberPad;
            textField.placeholder = [NSString stringWithFormat:@"%@0%@00", self.currencySymbol, self.decimalSeparator];
            textField.delegate = self;
        } else {
            textField.placeholder = cell.textLabel.text;
        }
        cell.accessoryView = textField;
    }
    return cell;
}

@end
