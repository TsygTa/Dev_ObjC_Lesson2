//
//  ViewController.m
//  Dev_ObjC_Lesson2
//
//  Created by Tatiana Tsygankova on 12.05.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "MyItem.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style: UITableViewStylePlain];
    [self prepareData];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.view addSubview:self.tableView];
}

- (void) prepareData {
    self.items = [[NSMutableArray alloc] initWithObjects:
                  [[MyItem alloc] initWithLabel:@"Photo1" andImageName:@"photo1"],
        [[MyItem alloc] initWithLabel:@"Photo2" andImageName:@"photo2"],
        [[MyItem alloc] initWithLabel:@"Photo3" andImageName:@"photo3"],
        [[MyItem alloc] initWithLabel:@"Photo4" andImageName:@"photo4"],
        [[MyItem alloc] initWithLabel:@"Photo5" andImageName:@"photo5"],
     nil];
}

#pragma mark -- UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

-  (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(!cell) {
        cell = [[MyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    MyItem *item = self.items[indexPath.row];
    [cell config:[UIImage imageNamed:item.imageName] withLabel:item.label];
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.items removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 300;
}

@end
