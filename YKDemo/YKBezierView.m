//
//  YKBezierView.m
//  YKDemo
//
//  Created by yankang on 2018/5/26.
//  Copyright © 2018年 yankang. All rights reserved.
//

#import "YKBezierView.h"

@implementation YKBezierView


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        ///
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1设置绘制上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //2.从一个点开始
    CGContextMoveToPoint(context, 333, 0);
    //3.添加贝塞尔曲线
    /*
     参数1：CGContextRef  _Nullable 绘图上下文
     参数2：CGFloat cp1x 第一个控制点x坐标
     参数2：CGFloat cp1y 第一个控制点y坐标
     参数2：CGFloat cp2x 第二个控制点x坐标
     参数2：CGFloat cp2y 第二个控制点y坐标
     参数2：CGFloat x 结束点x坐标
     参数2：CGFloat y 结束点y坐标
     */
    CGContextAddCurveToPoint(context, 333, 0, 332, 26, 330, 26);
    CGContextAddCurveToPoint(context, 330, 26, 299, 20, 299, 17);
    CGContextAddLineToPoint(context, 296, 17);
    CGContextAddCurveToPoint(context, 296, 17, 296, 19, 291, 19);
    CGContextAddLineToPoint(context, 250, 19);
    CGContextAddCurveToPoint(context, 250, 19, 241, 24, 238, 19);
    CGContextAddCurveToPoint(context, 236, 20, 234, 24, 227, 24);
    CGContextAddLineToPoint(context, 100, 45);
    CGContextAddLineToPoint(context, 97,46);
    CGContextAddCurveToPoint(context, 97, 46, 86, 71, 64, 72);
//    CGContextFillPath(context);//填充
//    CGContextDrawPath(context,//描边填充 kCGPathStroke);
    CGContextStrokePath(context);//描边
    
}


@end
