//
//  GSSizeUtil.m
//  GlassStore
//
//  Created by noname on 14/12/6.
//  Copyright (c) 2014年 ORead. All rights reserved.
//

#import "GSSizeUtil.h"

@implementation GSSizeUtil
+(CGSize)sizeFromMilliMeterSize:(CGSize)aSize
{
    // 1in = 25.4mm
    // ppi = pixels per inch
    CGFloat ppi = 132.0f;
    CGFloat ppmm = ppi/25.4f;
    CGSize resultSize = CGSizeMake(aSize.width*ppmm, aSize.height*ppmm);
    return resultSize;
}
@end
