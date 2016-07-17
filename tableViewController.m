//
//  tableViewController.m
//  UITableViewController Challange Solution
//
//  Created by ENRIQUE SERRANO on 7/16/16.
//  Copyright © 2016 ENRIQUE SERRANO. All rights reserved.
//

#import "tableViewController.h"

@implementation tableViewController


#pragma mark -TABLE VIEW SOURCE

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    } else if (section == 1){
        return 1;
    } else {
        return 3;
    }
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"I am in section 0";
    } else if (indexPath.section == 1) {
        cell.textLabel.text = @"I am in section 1";
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"Row %i",indexPath.row];
    }
    
    return cell;
}


@end
