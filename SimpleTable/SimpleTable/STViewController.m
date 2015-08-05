//
//  STViewController.m
//  SimpleTable
//
//  Created by Si Lam on 7/3/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "STViewController.h"

@interface STViewController ()

@end

@implementation STViewController

@synthesize tableData;
@synthesize cellCount;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableData = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i < 10; i++)
    {
        NSString *dataString = [NSString stringWithFormat:@"Item %d", i];
        [self.tableData addObject:dataString];
        
    }
    
    NSLog(@"The tableData array contains %@", self.tableData);
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    self.tableData = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
#pragma mark - UITableViewDataSource

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*
    UIView *tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0,0,320, 50)];
    
    [tableHeaderView setBackgroundColor:[UIColor blueColor]];
    
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10,10,320,25)];
    
    headerLabel.text = @"Header View";
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.backgroundColor = [UIColor clearColor];
    
    
    [tableHeaderView addSubview:headerLabel];
    [tableView setTableHeaderView:tableHeaderView];
    */
    
    return [self.tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if ( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    return cell;
    
}


#pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Table row %d has been tapped", indexPath.row);
    NSString *messageString = [NSString stringWithFormat:@"You tapped row %d", indexPath.row];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row Tapped" message:messageString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}


@end
