//
//  AATableViewCell.h
//  SBApps
//
//  Created by hc on 2016/12/9.
//  Copyright © 2016年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AATableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *btn;

@property (nonatomic,copy) void (^actionBlock)(void);



@end
