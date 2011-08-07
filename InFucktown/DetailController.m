//
//  DetailController.m
//  InFucktown
//
//  Created by Robert Zienert on 8/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DetailController.h"

@implementation DetailController

@synthesize item;
@synthesize itemDate;
@synthesize itemSummary;

- (id)initWithItem:(NSDictionary *)theItem {
    if (self = [super initWithNibName:@"DetailController" bundle:nil]) {
        self.item = theItem;
        self.title = [item objectForKey:@"title"];
    }
                
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] init];
    
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init] autorelease];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    [itemDate setFont:[UIFont fontWithName:@"ArialMT" size:14]];
    self.itemDate.text = [dateFormatter stringFromDate:[item objectForKey:@"pubDate"]];
    
    [itemSummary setFont:[UIFont fontWithName:@"ArialMT" size:32]];
    self.itemSummary.text = [item objectForKey:@"summary"];
}

- (void)viewDidUnload
{
    [self setItemDate:nil];
    [self setItemSummary:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [item release];
    [itemDate release];
    [itemSummary release];
    [super dealloc];
}

@end
