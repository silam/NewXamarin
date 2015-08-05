//
//  ViewController.m
//  SingleViewApp
//
//  Created by Si Lam on 7/27/12.
//  Copyright (c) 2012 Si Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableData, indexTitleArray;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableData = [[NSArray alloc] 
                      initWithObjects:@"Aaron",@"Bailey",@"Cadan",@"Dafydd",@"Eamonn",@"Fabian",
                      @"Gabrielle",@"Hafwen",@"Isaac",@"Jacinta",@"Kathleen",@"Lucy",@"Maurice",
                      @"Nadia",@"Octavia",@"Padraig",@"Quinta",@"Rachael",@"Sabina",@"Tabitha",
                      @"Uma",@"Valentina",@"Wallis",@"Xanthe",@"Yvonne",@"Zebadiah",nil];
    
    NSString *letters = @"A B C D E F G H I J K L M N O P Q R S T U V W X Y Z";
    
    self.indexTitleArray = [letters componentsSeparatedByString:@" "];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(UITableViewCell *)tableView:(UITableView *)tableView 
cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.section];
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.indexTitleArray count];
    
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:
(NSString *)title atIndex:(NSInteger)index {
    return [self.indexTitleArray indexOfObject:title];
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.indexTitleArray;
}

-(NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section {
    return [self.indexTitleArray objectAtIndex:section];
}
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
