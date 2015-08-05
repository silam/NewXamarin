//
//  NAViewController.m
//  NamesApp
//
//  Created by Si Lam on 8/16/12.
//  Copyright (c) 2012 Si Lam. All rights reserved.
//

#import "NAViewController.h"

@interface NAViewController ()
    -(void)configureSectionData;
@end

@implementation NAViewController

@synthesize tableData,outerArray, indexTitlesArray, collation;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collation = [UILocalizedIndexedCollation currentCollation];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* plistPath = [bundle pathForResource:@"Names" ofType:@"plist"];
    
    NSDictionary *namesDictionary = [[NSDictionary alloc] 
                                     initWithContentsOfFile:plistPath];
    
    self.tableData = [namesDictionary objectForKey:@"Root"];
    
    [self configureSectionData];    
    
}

-(void)configureSectionData {
    
    NSUInteger sectionTitlesCount = [collation.sectionTitles count];
    
    self.outerArray = [NSMutableArray arrayWithCapacity:sectionTitlesCount];
    
    for (NSUInteger index = 0; index < sectionTitlesCount; index++) {
        NSMutableArray *array = [NSMutableArray array];
        [self.outerArray addObject:array];
    }
    
    for (NSString *nameString in tableData) {
        NSInteger sectionNumber = [collation 
                                   sectionForObject:nameString collationStringSelector:@selector(lowercaseString)];
        NSMutableArray *sectionNames = [outerArray objectAtIndex:sectionNumber];
        [sectionNames addObject:nameString];
    }
    
    for (NSUInteger index = 0; index < sectionTitlesCount; index++) {
        NSMutableArray *namesForSection = [outerArray objectAtIndex:index];
        
        NSArray *sortedNamesForSection = [collation sortedArrayFromArray:
                                          namesForSection collationStringSelector:@selector(lowercaseString)];
        
        [self.outerArray replaceObjectAtIndex:index withObject:sortedNamesForSection];
    }
}




- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
