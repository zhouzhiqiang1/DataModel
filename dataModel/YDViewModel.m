//
//  YDViewModel.m
//  dataModel
//
//  Created by r_zhou on 15/11/27.
//  Copyright © 2015年 r_zhou. All rights reserved.
//

#import "YDViewModel.h"
#import "GSDataEngine.h"

@implementation YDViewModel
- (void)data
{
    [[GSDataEngine shareEngine] addGetPersonalInformationActionTaskWithResponse:^(GSTaskResponse *aTaskResponse) {
        if (aTaskResponse.errorCode == GSErrorCMSuccess) {
            NSArray *hobbyNames = [aTaskResponse.data objectForKey:@"rows"];
            //            NSMutableArray *hobbyInfoList = [[NSMutableArray alloc] init];
            //            for (NSDictionary *dic in hobbyNames) {
            //                YDUserImpressionWallInfo *hobbyInfo = [[YDUserImpressionWallInfo alloc] init];
            //                hobbyInfo.impression = [dic objectForKey:@"impression"];
            //                [hobbyInfoList addObject:hobbyInfo];
            //            }
            //            if (hobbyInfoList.count > 0) {
            //                [self setArray:hobbyInfoList];
            //            }
        } else {
            NSLog(@"失败");
        }
    } userid:100004];
}
@end

