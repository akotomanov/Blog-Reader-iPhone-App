//
//  MasterViewController.m
//  BlogReader
//
//  Created by Alexander Kotomanov on 23.01.13.
//  Copyright (c) 2013 Alexander Kotomanov. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.titlesArray = [NSArray arrayWithObjects:@"Getting started with WordPress",
                        @"Building a Syntax-Highlighted Input Box with JavaScript",
                        @"8 SEO Leaders Reveal Their Most Significant SEO Wins",
                        @"The Truth About Raising Money for Your Business",
                        @"Getting Started With The Canvas API",
                        @"I Have an Idea for a Killer App, but Where Do I Start?",
                        @"SMART Goal Setting",
                        @"Better Freelance Business Practices",
                        @"Announcing! New Learning Adventures (Try Them for Free)",
                        @"The Absolute Beginner’s Guide to Sass", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = self.titlesArray[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
    }
}

@end
