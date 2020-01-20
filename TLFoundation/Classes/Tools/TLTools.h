//
//  TLTools.h
//
//  Created by Eric on 2019/4/26.
//  Copyright © 2019 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TLTools : NSObject

#pragma mark - < 校验相关方法 >

/// 校验手机后
/// @param phoneNumber 手机号
+ (BOOL)validatePhoneNumber:(NSString *)phoneNumber;

/// 校验密码（英文，数字，下划线）
/// @param password 密码
+ (BOOL)validatePassword:(NSString *)password;

/// 验证邮箱
/// @param email 邮箱
+(BOOL)validateEmail:(NSString *)email;

#pragma mark - < UUID获取 >

+ (NSString*)getUUIDString;


@end

NS_ASSUME_NONNULL_END
