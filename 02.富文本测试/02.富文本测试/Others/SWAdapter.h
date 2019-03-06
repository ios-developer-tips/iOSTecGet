//
//  SWAdapter.h
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/6.
//  Copyright © 2019 信息科技部. All rights reserved.
//
#ifndef SWAdapter_h
#define SWAdapter_h
//#import <Foundation/Foundation.h>

//#pragma 屏幕尺寸
//#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
//#define kScreenHeight [UIScreen mainScreen].bounds.size.height
//
//#pragma UI设计图尺寸
//#define kBaseWidth   375
//#define kBaseHeight  1334

// 宏定义内联函数
//#define Inline static inline
#pragma mark --设置比例
// 实际屏幕宽度和设计图宽度的比例


//#define kAdaptionWidth \
//- (CGFloat)AdaptionWidth \
//{\
//    return kScreenWidth/kBaseWidth;\
//}\

////传入设计图size，转化为实际屏幕的CGsize返回
//#define kAdaptionSize AdaptionSize(CGFloat width, CGFloat height) \
//{\
//    CGFloat newWidth = width * AdaptionWidth();\
//    CGFloat newHeight = height * AdaptionWidth();\
//    return CGSizeMake(newWidth, newHeight);\
//}\
////传入设计图Point，转化成CGpoint返回
//Inline CGPoint AAadaptionPoint(CGFloat x, CGFloat y) {
//    CGFloat newX = x * AdaptionWidth();
//    CGFloat newY = y * AdaptionWidth();
//    return  CGPointMake(newX, newY);
//}
////传入设计图Rect，返回已适配真实屏幕的CGrect
//Inline CGRect AAdaptionRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
//    CGFloat newX = x*AdaptionWidth();
//    CGFloat newY = y*AdaptionWidth();
//    CGFloat newW = width*AdaptionWidth();
//    CGFloat newH = height*AdaptionWidth();
//    return CGRectMake(newX, newY, newW, newH);
//}
//
//Inline CGRect AAdaptionRectFromFrame(CGRect frame){
//    CGFloat newX = frame.origin.x*AdaptionWidth();
//    CGFloat newY = frame.origin.y*AdaptionWidth();
//    CGFloat newW = frame.size.width*AdaptionWidth();
//    CGFloat newH = frame.size.height*AdaptionWidth();
//    return CGRectMake(newX, newY, newW, newH);
//}
//
////字体适配：传出设计图字体大小
//Inline UIFont * AAFont(CGFloat font){
//    return [UIFont systemFontOfSize:font*AdaptionWidth()];
//}
////加粗字体适配
//Inline UIFont * BoldFont(CGFloat font){
//    return [UIFont boldSystemFontOfSize:font*AdaptionWidth()];
//}


#endif /* SWAdapter_h */
