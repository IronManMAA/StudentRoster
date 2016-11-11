//
//  GROCERIESTableViewController.m
//  GROCERIES
//
//  Created by Marco Almeida on 11/8/16.
//  Copyright © 2016 THE IRON YARD. All rights reserved.
//

#import "GROCERIESTableViewController.h"
#import "GroceryItem.h"
// if you want to use a class, you must import the header file here
// NEVER IMPORT .m files anywhere !!!!!!!

@interface GROCERIESTableViewController ()


@property (nonatomic,strong) NSArray *groceries;
@end

@implementation GROCERIESTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // go to GroceryItem class and run Groceryitemwith dictionary method
    GroceryItem *anItem = [GroceryItem groceryItemWithDictionary:@{
    @"name":     @"Marco",
    @"gitHub": @"IronManMAA",
    @"mail": @"Marco.almeida.us@Gmail.com",
    @"age": @"57"

    //    @"aisle": [NSNumber numberWithInt:6]
    }];
    self.groceries = @[anItem];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
// 1 means this table will have 1 level down.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
// in this case 0 = Carrots, 1=Cereal, 2=Bread. Therefore return should be 3.
//        return 3;
// better yet to count items in the array so this can be automatically updated.
    return self.groceries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"GroceriesCell"
 // <#@"reuseIdentifier"#> Name came from main StoryBoard identifier field you gave
 forIndexPath:indexPath];
    
    // Configure the cell...

    GroceryItem *anItem = self.groceries[indexPath.row];
    cell.textLabel.text = anItem.nameKey;
    cell.detailTextLabel.text = anItem.gitHubKey;
   
    
 
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
