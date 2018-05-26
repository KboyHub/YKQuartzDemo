//
//  YKCustomView.m
//  YKDemo
//
//  Created by yankang on 2018/5/26.
//  Copyright © 2018年 yankang. All rights reserved.
//

#import "YKCustomView.h"

@implementation YKCustomView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1.获取绘图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //2.开始绘制三角形
    CGContextMoveToPoint(context, 75, 50);
    CGContextAddLineToPoint(context, 10, 150);
    CGContextAddLineToPoint(context, 40, 150);
   
//    //3.闭合图形
    CGContextClosePath(context);
    //4.填充颜色
    //4.1设置描边颜色
    [[UIColor redColor]setStroke];
    //4.2设置填充颜色
    [[UIColor grayColor]setFill];
    
    //****多次绘制前需要保存之前的参数
    CGContextSaveGState(context);
    [[UIColor blueColor]setFill];
    //****5.恢复之前的上下文参数
    CGContextRestoreGState(context);
    //6.绘制路径
    /*
     kCGPathFill,填充
     kCGPathEOFill,
     kCGPathStroke,描边
     kCGPathFillStroke,填充描边
     kCGPathEOFillStroke
     */
    CGContextDrawPath(context, kCGPathFillStroke);
    
    CGContextRelease(context);
}


@end
