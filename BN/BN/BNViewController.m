//
//  BNViewController.m
//  BN
//
//  Created by Si Lam on 7/12/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "BNViewController.h"
#import "BNDetailViewController.h"



@interface BNViewController ()

@end

@implementation BNViewController

@synthesize tableData;
@synthesize theTableView;

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    
    NSIndexPath *selectedIndexPath = [self.theTableView indexPathForSelectedRow];
    [self.theTableView deselectRowAtIndexPath:selectedIndexPath animated:YES];
    
}

-(void) tableView:(UITableView*) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BNDetailViewController *detailViewController = [[BNDetailViewController alloc] initWithNibName:@"BNDetailViewController" bundle:nil];
    
    detailViewController.bnName = [self.tableData objectAtIndex:indexPath.row];
    
    
    
    
    [self.navigationController pushViewController:detailViewController  animated:YES];
    
                                                        
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Baby name";
}

- (void)viewDidUnload
{
    [self setTheTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.tableData != nil )
    {
        return [self.tableData count];
    }
    return 0;
    
}

-(UITableViewCell *) tableView: (UITableView*) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"babyNameCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    
    if ( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    BNName *tempname = [self.tableData objectAtIndex: indexPath.row];
    
    
    cell.textLabel.text = tempname.nameText;
    
    return cell;
}

@end
