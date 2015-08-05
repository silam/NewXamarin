//
//  BNAppDelegate.m
//  BN
//
//  Created by Si Lam on 7/12/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "BNAppDelegate.h"

#import "BNViewController.h"
#import "BNName.h"



@interface BNAppDelegate()
-(BNName *) createNameWithNonSenseDataWithIndex:(int) index;
@end


@implementation BNAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize tableData;





- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    NSUInteger numberOfNames = 7;
    
    self.tableData = [[NSMutableArray alloc] initWithCapacity:numberOfNames];
    
    
    for ( NSUInteger i =0; i < numberOfNames;i++)
    {
        BNName *tempname = [self createNameWithNonSenseDataWithIndex:i];
        [self.tableData addObject:tempname];
    }
    
    
    
    
    
    // Override point for customization after application launch.
    self.viewController = [[BNViewController alloc] initWithNibName:@"BNViewController" bundle:nil];
    
    self.viewController.tableData = (NSArray*) self.tableData;
    
    
    UINavigationController * navController = [[UINavigationController alloc] initWithRootViewController: self.viewController];
    
    
    
    
    
    
    
    
    self.window.rootViewController = navController; //self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


-(BNName *) createNameWithNonSenseDataWithIndex:(int)index
{
    BNName *randomDataname = [[BNName alloc] init];
    NSArray *namesArray = [[NSArray alloc] initWithObjects:@"Abigail", @"Ada",
                           @"Adelaide", @"Abel", @"Anotole", @"Barbara", @"Berthe", nil];
    
    
    NSArray *genderArray = [[NSArray alloc] initWithObjects:@"Boy", @"Girl", @"Unisex", nil];
    
    NSArray *noteArray = [[NSArray alloc] initWithObjects:@"Joyful", @"Happy", nil];
    
    NSArray *derivationArray = [[NSArray alloc] initWithObjects:@"Celtic", @"Germanic", nil];
    
    
    NSArray *iconArray = [[ NSArray alloc] initWithObjects:@"icon1.png", @"icon2.png", nil];
    
    
    int genderCount = [genderArray count];
    int notesCount = [noteArray count];
    int derivativeCount = [derivationArray count];
    int iconCount = [iconArray count];
    
    
    randomDataname.nameText = [namesArray objectAtIndex:index];
    randomDataname.gender = [genderArray objectAtIndex:(arc4random()%genderCount)];
                                                                      
                                                                     
    randomDataname.derivation = [derivationArray objectAtIndex:(arc4random()%derivativeCount)];
    
    randomDataname.icon = [iconArray objectAtIndex:(arc4random()%iconCount)];
    
    randomDataname.notes = [noteArray objectAtIndex:(arc4random()%notesCount)];
    
    return randomDataname;
    
}

@end
