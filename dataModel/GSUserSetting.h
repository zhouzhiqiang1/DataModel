//
//  ORUserSetting.h
//  ORead
//
//  Created by noname on 14-7-26.
//  Copyright (c) 2014年 oread. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ORSettingsStrDeviceId @"ORSettingsStrDeviceID"    // urs id
#define ORSettingsStrUrsAESKey @"ORSettingsStrUrsAESKey"    // urs key
#define ORSettingsStrUrsParam @"ORSettingsStrUrsParam" // urs 登陆的参数
#define ORSettingsStrUserCipher @"ORSettingsStrUserCipher"  // LDSettingsStrUrsAESKey加密过的token
#define ORSettingsBoolNeedUrsRegister @"ORSettingsBoolNeedUrsRegister"  // 是否需要重新注册urs
#define ORSettingsBoolIsLogin @"ORSettingsBoolIsLogin"  // 用户是否是登陆状态

#define ORSettingsStrCurUserId @"ORSettingsStrCurUserId"                // 当前的用户Id

#define ORSettingsLongLongTimeForReview @"ORSettingsLongLongTimeIntervalForReview"     // 隔多久提示评论
@interface GSUserSetting : NSObject
+ (NSString *)stringOfKey:(NSString *)aKey;
+ (void)setString:(NSString *)aString forKey:(NSString *)aKey;

+ (BOOL)boolOfKey:(NSString *)aKey;
+ (void)setBool:(BOOL)aBool forKey:(NSString *)aKey;

+ (NSNumber *)numberOfKey:(NSString *)aKey;
+ (void)setNumber:(NSNumber *)aNumber forKey:(NSString *)aKey;

+ (NSDictionary *)dictionaryOfKey:(NSString *)aKey;
+ (void)setDictionary:(NSDictionary *)aDictionary forKey:(NSString *)aKey;

+ (NSData *)dataOfKey:(NSString *)aKey;
+ (void)setData:(NSData *)aData forKey:(NSString *)aKey;

+ (NSDictionary *)dictionaryFromPListFile:(NSString *)aPListFile;

+ (void)synchronize;
+ (void)removeObjectForKey:(NSString *)aKey;
@end
