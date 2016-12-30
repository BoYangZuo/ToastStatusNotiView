//
//  StatusNotiView.h
//  RSQ
//
//  Created by 左博杨 on 2016/12/6.
//  Copyright © 2016年 rishiqing. All rights reserved.
//  toast动画 用于提示用户

/*
失败情况下一定要有提示
成功情况下分情况提示
*/

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSInteger, NSNotiType){
    //成功
    NSNotiTypeSuccessSend = 0,//发送成功
    NSNotiTypeEmailHasSend = 1,//邮件已发送
    NSNotiTypeVerificationCodeHasSend = 2,//验证码已发送
    NSNotiTypeSuccessDelete = 3,//删除成功
    NSNotiTypeSuccessUnWrap = 4,//用户解绑成功
    NSNotiTypeSuccessCopy = 5,//复制成功
    NSNotiTypeSuccessMove = 6,//移动成功
    NSNotiTypeSuccessSecurityCodeEdit = 7,//密码修改成功
    
    //警告
    NSNotiTypeAlertHeadPhotoData = 8,//头像不能大于5M,请重新选择
    NSNotiTypeAlertHeadPhotoType = 9,//头像格式
    
    //失败
    NSNotiTypeFailureUpload = 10,//上传失败,请重新上传
    NSNotiTypeFailureWrap = 11,//账号绑定失败
    NSNotiTypeFailureSend = 12,//发送失败
    NSNotiTypeFailureSave = 13,//保存失败
    NSNotiTypeFailureMove = 14,//移动失败
    NSNotiTypeFailureAction = 15 ,//操作失败
    NSNotiTypeFailureDelete = 16,//删除失败
    NSNotiTypeFailureCopy = 17,//复制失败
    NSNotiTypeFailureUnReachable = 18,//网络连接失败
    NSNotiTypeFailureDataLoad = 19,//数据加载失败
    NSNotiTypeFailureNoAuthority = 20,//无权限操作
    
};

@interface StatusNotiView : UIView

+(void)showWithType:(NSNotiType )type;

@end
