//
//  GSUrlDef.h
//  GlassStore
//
//  Created by noname on 14/11/30.
//  Copyright (c) 2014年 ORead. All rights reserved.
//

#ifndef GlassStore_GSUrlDef_h
#define GlassStore_GSUrlDef_h

//pch 文件中修改地址
#ifdef DEVSERVER
#define GSHttpServer @"http://218.108.65.211/"
//#define GSHttpServer @"http://192.168.0.119:8080/"
#elif defined TESTSERVER
#define GSHttpServer @"http://test.readyidu.com/"

#else
#define GSHttpServer @"https://api.readyidu.com/"
#endif

static NSString * const kURLRequestHeaderIdReadFromCache = @"CustomHeaderReadFromCache";



/**
 *  获取他人用户中心资料
 */
#define GSUrlOtherUserInfo [NSString stringWithFormat:@"%@api/works/bannerinfo/selectbannerinfo", GSHttpServer]

#endif


