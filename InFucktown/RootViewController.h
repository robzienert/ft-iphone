//
//  RootViewController.h
//  InFucktown
//
//  Created by Robert Zienert on 8/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    UIActivityIndicatorView *activityIndicator;
    NSArray *items;
}

@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator;
@property (retain, nonatomic) NSArray *items;

- (void)loadData;

@end
