//
//  YDViewModel.m
//  dataModel
//
//  Created by r_zhou on 15/12/3.
//  Copyright © 2015年 r_zhou. All rights reserved.
//

#import "YDViewModel.h"
#import "GSDataEngine.h"

@implementation YDViewModel

- (void)fetchList
{
    [[GSDataEngine shareEngine] addGetNetworkDataActionTaskWithResponse:^(GSTaskResponse *aTaskResponse) {
        if (aTaskResponse.errorCode == GSErrorCMSuccess) {
            YDUserinfo *dataUserInfo = [[YDUserinfo alloc] initWithDictionary:aTaskResponse.data];

            [self setArray:dataUserInfo.rows];
            
        } else {
            NSLog(@"失败");
        }
    } userid:100004];

}



@end
