//
//  GroceryItem.h
//  Groceries
//
//  Created by Marco Almeida on 11/9/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryItem : NSObject

@property (nonatomic) NSString *nameKey;
@property (nonatomic) NSString *gitHubKey;
@property (nonatomic) NSString *mailKey;
@property (nonatomic) NSString *ageKey;

// @property (nonatomic) NSString *name;
// @property (nonatomic) NSString *category;
// @property (assign) NSUInteger aisle;


+ (GroceryItem *)groceryItemWithDictionary:(NSDictionary *)groceryItemDictionary;
// name of the method is groceryItemWithDictionary
// we are declaring this method here in the "GroceryItem.h" file. This makes it Public
// if entered in the "GroceryItem.m" file it will be private Method.



@end
