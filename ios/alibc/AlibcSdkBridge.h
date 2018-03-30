//
//  AlibcSdkBridge.h
//  alibc
//
//  Created by cocoboy on 2018/3/30.
//  Copyright © 2018年 Facebook. All rights reserved.
//



#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

#import <Foundation/Foundation.h>
#import <AlibabaAuthSDK/ALBBSDK.h>
#import <AlibcTradeSDK/AlibcTradeSDK.h>
#import <UIKit/UIKit.h>

@interface AlibcSdkBridge : NSObject
+ (instancetype)sharedInstance;
- (void)init:(RCTResponseSenderBlock)callback;
- (void)login: (RCTResponseSenderBlock)callback;
- (void)isLogin: (RCTResponseSenderBlock)callback;
- (void)getUser: (RCTResponseSenderBlock)callback;
- (void)logout: (RCTResponseSenderBlock)callback;
- (void)show: (NSDictionary *)param callback: (RCTResponseSenderBlock)callback;
- (void)showInWebView: (UIWebView *)webView param:(NSDictionary *)param;
@end
