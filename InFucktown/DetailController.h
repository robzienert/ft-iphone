//
//  DetailController.h
//  InFucktown
//
//  Created by Robert Zienert on 8/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailController : UIViewController {
    NSDictionary *item;
    UILabel *itemDate;
    UITextView *itemSummary;
}

@property (nonatomic, retain) NSDictionary *item;
@property (nonatomic, retain) IBOutlet UILabel *itemDate;
@property (nonatomic, retain) IBOutlet UITextView *itemSummary;

- (id)initWithItem:(NSDictionary *)theItem;

@end
