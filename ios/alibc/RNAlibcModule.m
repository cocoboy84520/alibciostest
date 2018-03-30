//
//  RNAlibcSdk.m
//  alibc
//
//  Created by cocoboy on 2018/3/30.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "RNAlibcModule.h"
#import "AlibcSdkBridge.h"

#import <AlibcTradeSDK/AlibcTradeSDK.h>
#import <AlibabaAuthSDK/ALBBSDK.h>
#import <React/RCTLog.h>


#define NOT_LOGIN (@"not login")

@implementation RNAlibcModule

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(init: (RCTResponseSenderBlock)callback)
{
  [[AlibcSdkBridge sharedInstance] init:callback];
}

RCT_EXPORT_METHOD(login: (RCTResponseSenderBlock)callback)
{
  [[AlibcSdkBridge sharedInstance] login:callback];
}
RCT_EXPORT_METHOD(isLogin: (RCTResponseSenderBlock)callback)
{
  [[AlibcSdkBridge sharedInstance] isLogin:callback];
}

RCT_EXPORT_METHOD(getUser: (RCTResponseSenderBlock)callback)
{
  [[AlibcSdkBridge sharedInstance] getUser:callback];
}

RCT_EXPORT_METHOD(logout: (RCTResponseSenderBlock)callback)
{
  [[AlibcSdkBridge sharedInstance] logout:callback];
}

RCT_EXPORT_METHOD(show: (NSDictionary *)param callback: (RCTResponseSenderBlock)callback){
  [[AlibcSdkBridge sharedInstance] show:param callback:callback];
}


@end
