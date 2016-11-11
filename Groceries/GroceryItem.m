//
//  GroceryItem.m
//  Groceries
//
//  Created by Marco Almeida on 11/9/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import "GroceryItem.h"

@implementation GroceryItem


+ (GroceryItem *)groceryItemWithDictionary:(NSDictionary *)groceryItemDictionary
// name of the method is groceryItemWithDictionary
// it must also be declared in the GroceryItem.h file
// we are declaring this method here in the "GroceryItem.h" file to make it Public
// if entered in the "GroceryItem.m" file, it will be private Method.

{
    GroceryItem *anItem = nil;
    // nil means nothing which is not the same as zero
    if (groceryItemDictionary)
        // if groceryItemDictionary exists do the following
    {
        anItem = [[GroceryItem alloc] init];
        // allocate memory in the computer and initiolize for the anItem object
//        anItem.name = groceryItemDictionary[@"name"];
        // name of the dictionary key (red) was giving the same name as de attribute name.
//        anItem.category = groceryItemDictionary[@"category"];
//        anItem.aisle = [groceryItemDictionary[@"aisle"] integerValue];

        anItem.nameKey = groceryItemDictionary[@"name"];
        anItem.gitHubKey = groceryItemDictionary[@"gitHub"];
        anItem.mailKey = groceryItemDictionary[@"mail"];
        anItem.ageKey = groceryItemDictionary[@"age"];

    
    }
    return anItem;
}


@end
