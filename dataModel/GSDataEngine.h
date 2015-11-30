//
//  GSDataEngine.h
//  dataModel
//
//  Created by r_zhou on 15/11/27.
//  Copyright © 2015年 r_zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GSDataDef.h"
#import "GSHTTPTask.h"

#pragma mark - HTTPHeader Key
static NSString * const kKeyHttpHeaderPlatform = @"platform";
static NSString * const kKeyHttpHeaderAppversion = @"appversion";
static NSString * const kKeyHttpHeaderDeviceId = @"deviceid";
static NSString * const kKeyHttpHeaderToken = @"token";


@interface GSDataEngine : NSObject

+ (instancetype)shareEngine;

/**
 *  当前网络状态是否可达
 *
 *  @return 网络可达返回YES，否则返回NO
 */
- (BOOL)isReachable;



/**
 *  获取个人信息
 */
-(GSHTTPTask *)addGetPersonalInformationActionTaskWithResponse:(GSTaskBlock())aResponseBlock userid:(long long)userid;

@end