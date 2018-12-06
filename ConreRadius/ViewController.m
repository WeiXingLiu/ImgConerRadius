//
//  ViewController.m
//  ConreRadius
//
//  Created by wahaha on 2018/12/5.
//  Copyright © 2018年 LWX. All rights reserved.
//

#import "ViewController.h"
#import "CreateHelper.h"
#import "TableViewCell.h"
#import "UIImageView+WebCache.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

/**
 图片地址
 */
@property (nonatomic, copy) NSArray *imgArr;

@end

@implementation ViewController

- (NSArray *)imgArr {
    if (!_imgArr) {
        _imgArr = @[@"http://files.vongihealth.com/shell/frontend/pictures/13560084607/180530113258608735.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/13560084607/180425051417927879.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/18998982066/180122100400288494.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/18998982066/180122100400625322.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/18998982066/180122100400870449.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/18998982066/180122100400344254.png",
                    @"http://files.vongihealth.com/shell/frontend/pictures/18998982066/180122100400691896.png"];
    }
    return _imgArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.delegate = self;
    tableview.dataSource = self;
    [tableview registerClass:[TableViewCell class] forCellReuseIdentifier:@"TableViewCell"];
    [self.view addSubview:tableview];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    [cell.igView sd_setImageWithURL:[NSURL URLWithString:self.imgArr[indexPath.row % 7]] placeholderImage:[UIImage imageNamed:@"example1.jpg"]];
    return cell;
}

@end
