//
//  TLTools.m
//
//  Created by Eric on 2019/4/26.
//  Copyright © 2019 Eric. All rights reserved.
//

#import "TLTools.h"

@implementation TLTools

#pragma mark - < 校验相关方法 >

/// 校验手机后
/// @param phoneNumber 手机号
+ (BOOL)validatePhoneNumber:(NSString *)phoneNumber{
    if (phoneNumber.length !=11) {
        return NO;
    }
    NSRegularExpression *regularexpression = [[NSRegularExpression alloc]
                                              initWithPattern:@"((\\d{11})|^((\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1})|(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1}))$)"
                                              options:NSRegularExpressionCaseInsensitive
                                              error:nil];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:phoneNumber
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, phoneNumber.length)];
    if(numberofMatch > 0)
    {
        return YES;
    }
    return NO;
}

/// 校验密码（英文，数字，下划线）
/// @param password 密码
+ (BOOL)validatePassword:(NSString *)password{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,16}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    BOOL isPassword = [passWordPredicate evaluateWithObject:password];
    return isPassword;
}

/// 验证邮箱
/// @param email 邮箱
+(BOOL)validateEmail:(NSString *)email{
    NSString *emailCheck=@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *preCKEmail=[NSPredicate predicateWithFormat:@"self matches %@",emailCheck];
    return [preCKEmail evaluateWithObject:email];
}



#pragma mark - < UUID获取 >

+ (NSString*)getUUIDString{
    return [self bytes2HexString:[self getUUIDData]];
}

+ (NSData *) getUUIDData {
    CFUUIDRef UUID = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDBytes bytes = CFUUIDGetUUIDBytes(UUID);
    NSData *result = [[NSData alloc] initWithBytes:&bytes length:sizeof(bytes)];
    CFRelease(UUID);
    return result;
}

+ (NSString*)bytes2HexString:(NSData *)data {
    if (data == nil)
        return nil;
    
    NSMutableString* hexString = [NSMutableString new];
    unsigned const char* pointer = [data bytes];
    NSUInteger length = [data length];
    for(unsigned short i = 0 ; i < length ; i++)
    {
        [hexString appendFormat:@"%02X", *(pointer++)];
    }
    return hexString;
}


@end
