//
//  ProductTableViewController.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 5/31/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ProductTableViewController.h"
#import "Product.h"

#define MAX_LENGTH 5

@implementation ProductTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setCurrencyCode:@"PAB"];
    self.maximumFractionDigits = numberFormatter.maximumFractionDigits;
    self.decimalSeparator = numberFormatter.decimalSeparator;
    self.currencySymbol = numberFormatter.currencySymbol;
}

- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString*)string
{
    // get current cursor position
    UITextRange* selectedRange = [textField selectedTextRange];
    UITextPosition* start = textField.beginningOfDocument;
    NSInteger cursorOffset = [textField offsetFromPosition:start toPosition:selectedRange.start];
    // Update the string in the text input
    NSMutableString* currentString = [NSMutableString stringWithString:[textField.text stringByReplacingOccurrencesOfString:self.currencySymbol withString:@""]];
    NSUInteger currentLength = currentString.length;
    NSUInteger rangeLocation = range.location == 0 ? range.location : range.location - self.currencySymbol.length;
    range.location = rangeLocation;
    [currentString replaceCharactersInRange:range withString:string];
    // Strip out the decimal separator
    [currentString replaceOccurrencesOfString:self.decimalSeparator withString:@"" options:NSLiteralSearch range:NSMakeRange(0, [currentString length])];
    // Generate a new string for the text input
    int currentValue = [currentString intValue];
    NSString* format = [NSString stringWithFormat:@"%@%%.%luf", self.currencySymbol, (unsigned long)self.maximumFractionDigits];
    double minorUnitsPerMajor = pow(10, self.maximumFractionDigits);
    NSString* newString = [[NSString stringWithFormat:format, currentValue / minorUnitsPerMajor] stringByReplacingOccurrencesOfString:@"." withString:self.decimalSeparator];
    if ([[NSString stringWithFormat:@"%d", currentValue] length] <= MAX_LENGTH) {
        textField.text = newString;
        // if the cursor was not at the end of the string being entered, restore cursor position
        if (cursorOffset != currentLength) {
            NSUInteger lengthDelta = newString.length - currentLength;
            NSUInteger newCursorOffset = MAX(0, MIN(newString.length, cursorOffset + lengthDelta));
            UITextPosition* newPosition = [textField positionFromPosition:textField.beginningOfDocument offset:newCursorOffset];
            UITextRange* newRange = [textField textRangeFromPosition:newPosition toPosition:newPosition];
            [textField setSelectedTextRange:newRange];
        }
    }
    return NO;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Product numberOfAttributes];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductsDetailsPrototypeCell" forIndexPath:indexPath];
    NSString *cellTitle = [[Product productDetailsLabels] objectAtIndex:indexPath.row];
    cell.textLabel.text = cellTitle;
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
