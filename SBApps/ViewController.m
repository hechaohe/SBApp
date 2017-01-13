//
//  ViewController.m
//  SBApps
//
//  Created by hc on 2016/11/25.
//  Copyright © 2016年 hc. All rights reserved.
//

#import "ViewController.h"
#import "AATableViewCell.h"
@interface ViewController () <UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.dataSource  = self;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"AATableViewCell" bundle:nil] forCellReuseIdentifier:@"AATableViewCell"];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AATableViewCell" forIndexPath:indexPath];
    [cell.btn setTitle:@"aa" forState:UIControlStateNormal];
    
    __weak typeof(self) weakSelf = self;
    
    __weak typeof(AATableViewCell) *weakCell = cell;
    
    if (indexPath.row == 1) {
        cell.actionBlock = ^{
            NSLog(@"aaa");
            weakSelf.tableView.backgroundColor = [UIColor brownColor];
            [weakCell.btn setTitle:@"haha" forState:UIControlStateNormal];
        };
    }else {
        cell.actionBlock = ^{
            weakCell.backgroundColor = [UIColor yellowColor];
            NSLog(@"dian cuo le");
        };
    }
   
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
