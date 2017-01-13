//
//  AATableViewCell.m
//  SBApps
//
//  Created by hc on 2016/12/9.
//  Copyright © 2016年 hc. All rights reserved.
//

#import "AATableViewCell.h"

@implementation AATableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)shouBlock:(id)sender {
    
    if (self.actionBlock) {
        self.actionBlock();
    }
}

@end
