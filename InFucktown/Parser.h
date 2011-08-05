//
//  Parser.h
//  InFucktown
//
//  Created by Robert Zienert on 8/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

// http://cocoadevblog.com/iphone-tutorial-creating-a-rss-feed-reader

#import <Foundation/Foundation.h>

@protocol ParserDelegate <NSObject>

- (void)receivedItems:(NSArray *)theItems;

@end

@interface Parser : NSObject <NSXMLParserDelegate> {
    id _delegate;
    
    NSMutableData *responseData;
    NSMutableArray *items;
    
    NSMutableDictionary *item;
    NSString *currentElement;
    NSMutableString * currentTitle, * currentDate, * currentSummary, * currentLink;
}

@property (retain, nonatomic) NSMutableData *responseData;
@property (retain, nonatomic) NSMutableArray *items;
@property (retain, nonatomic) NSMutableString *currentTitle;
@property (retain, nonatomic) NSMutableString *currentDate;
@property (retain, nonatomic) NSMutableString *currentSummary;
@property (retain, nonatomic) NSMutableString *currentLink;

- (void)parseRssFeed:(NSString *)url withDelegate:(id)aDelegate;

- (id)delegate;
- (void)setDelegate:(id)new_delegate;

@end
