//
//  RNAlibcSdk.h
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

@interface RNAlibcModule : NSObject <RCTBridgeModule>

@end
