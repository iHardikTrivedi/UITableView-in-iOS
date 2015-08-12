//
//  ViewController.m
//  SimpleTableVIew
//
//  Created by Hardik Trivedi on 12/08/2015.
//  Copyright (c) 2015 iHartDevelopers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    marrCountry = [[NSMutableArray alloc] initWithObjects:@"India", @"Japan",
                   @"Canada", @"Brazil", @"China", @"Russia",
                   @"Mexico", @"Turkey", @"Spain", @"Egypt",
                   @"Germany", @"Iceland", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [marrCountry count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *strIdentifier = @"CountryCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:strIdentifier];
    
    [cell.textLabel setText:[NSString stringWithFormat:@"%@", [marrCountry objectAtIndex:indexPath.row]]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Country" message:[NSString stringWithFormat:@"Your Select Country : %@", [marrCountry objectAtIndex:indexPath.row]] delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [alert show];
}

@end
