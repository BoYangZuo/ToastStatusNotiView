//
//  StatusNotiView.m
//  RSQ
//
//  Created by 左博杨 on 2016/12/6.
//  Copyright © 2016年 rishiqing. All rights reserved.
//

#import "StatusNotiView.h"
#import "UIView+ITTAdditions.h"
#import "Masonry.h"

@interface StatusNotiView()

@property (nonatomic,strong) UIImageView *iconView;

@property (nonatomic,strong) UILabel *infoLabel;

@end

@implementation StatusNotiView

+(void)showWithType:(NSNotiType)type{
    StatusNotiView *obj =  [[StatusNotiView alloc]initWithFrame:CGRectMake(0, -64, [UIScreen mainScreen].bounds.size.width, 64)];
    [[UIApplication sharedApplication].keyWindow addSubview:obj];
    [obj showWithType:type];
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.iconView = [[UIImageView alloc]init];
        [self addSubview:self.iconView];
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(20);
            make.width.equalTo(@22);
            make.height.equalTo(@22);
            make.bottom.equalTo(self).offset(-10);
        }];

        [self addSubview:self.infoLabel];
        [self.infoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconView.mas_right).offset(20);
            make.centerY.equalTo(self.iconView);
            make.height.equalTo(@(30));
            make.right.equalTo(self).offset(-20);
        }];
        self.backgroundColor = [UIColor colorWithRed:253/255.0 green:148/255.0 blue:149/255.0 alpha:1.0];
    }
    return self;
}

-(void)showWithType:(NSNotiType)type{
    [self setType:type];
    
    [UIView animateWithDuration:0.25 delay:0.25 usingSpringWithDamping:1.0 initialSpringVelocity:5.0 options:0 animations:^{
        self.y = 0;
        self.superview.userInteractionEnabled = NO;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.25 delay:1.5 usingSpringWithDamping:1.0 initialSpringVelocity:3.0 options:0 animations:^{
            self.y = -64;
        } completion:^(BOOL finished) {
            self.superview.userInteractionEnabled = YES;
        }];
    }];
}

-(void)setType:(NSNotiType)type{
    switch (type) {
        case 0:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"发送成功";
            break;
        case 1:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"邮件已发送";
            break;
        case 2:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"验证码已发送";
            break;
        case 3:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"删除成功";
            break;
        case 4:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"用户解绑成功";
            break;
        case 5:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"复制成功";
            break;
        case 6:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"移动成功";
            break;
        case 7:
            self.iconView.image = [UIImage imageNamed:@"success"];
            self.infoLabel.text = @"密码修改成功";
            break;
        case 8:
            self.iconView.image = [UIImage imageNamed:@"info"];
            self.infoLabel.text = @"头像不能大于5M,请重新选择";
            break;
        case 9:
            self.iconView.image = [UIImage imageNamed:@"info"];
            self.infoLabel.text = @"头像仅jpg,png,gif,bmp,jepg格式,请重新上传";
            break;
        case 10:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"上传失败,请重新上传";
            break;
        case 11:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"账号绑定失败";
            break;
        case 12:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"发送失败";
            break;
        case 13:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"保存失败";
            break;
        case 14:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"移动失败";
            break;
        case 15:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"操作失败";
            break;
        case 16:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"删除失败";
            break;
        case 17:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"复制失败";
            break;
        case 18:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"网络连接失败";
            break;
        case 19:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"数据加载失败";
            break;
        case 20:
            self.iconView.image = [UIImage imageNamed:@"error"];
            self.infoLabel.text = @"无权限操作";
            break;
        default:
            break;
    }
}

#pragma mark - Getter Methods

-(UILabel *)infoLabel{
    if (!_infoLabel) {
        _infoLabel = [[UILabel alloc]init];
        _infoLabel.backgroundColor = [UIColor clearColor];
        _infoLabel.textColor = [UIColor whiteColor];
        _infoLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:17];
    }
    return _infoLabel;
}

@end
