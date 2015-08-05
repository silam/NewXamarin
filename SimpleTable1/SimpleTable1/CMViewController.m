//
//  CMViewController.m
//  SimpleTable1
//
//  Created by Si Lam on 8/20/14.
//  Copyright (c) 2014 Fluke Thermography. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController ()

@end

@implementation CMViewController

@synthesize tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cellCount = 0;
    
    self.tableData = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i < 99999; i++)
    {
        NSString *dataString = [NSString stringWithFormat:@"Item %d", i];
        [self.tableData addObject:dataString];
    }
    
    NSLog(@"The tabelData array containes %@", self.tableData);
    // Print out the number of items in the array to the log
    NSLog(@"The tableData array contains %d items", [self.tableData count]);
    NSLog(@"There are %d cells initially", self.cellCount);}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    self.tableData = nil;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"table Row %d has been tapped", indexPath.row);
    
    NSString *messageString = [NSString stringWithFormat:@"You tapped row %d",
                               indexPath.row];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                          @"Row tapped"
                        message:messageString
                        delegate:nil
                        cancelButtonTitle:@"OK"
                         
                                          otherButtonTitles:nil];
    [alert show];
}
@end
