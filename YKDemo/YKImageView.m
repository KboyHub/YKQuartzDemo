//
//  YKImageView.m
//  YKDemo
//
//  Created by yankang on 2018/5/26.
//  Copyright © 2018年 yankang. All rights reserved.
//

#import "YKImageView.h"

@implementation YKImageView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSString *imagePath = [[NSBundle mainBundle]pathForResource:@"imageIcon" ofType:@"png"];
    UIImage * imge = [UIImage imageWithContentsOfFile:imagePath];
    CGImageRef imageRef = imge.CGImage;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
/* 1.CTM变换矩阵
    //坐标系转换X轴不变，Y轴2倍坐标平移 平移变换
    CGContextTranslateCTM(context, 0, imge.size.height+40);
    //缩放变换 X轴比例因子1，Y轴为-1
    CGContextScaleCTM(context, 1, -1);
*/
    
/*2.Affine仿射变换
 
 
 
 */
    CGAffineTransform tAffine = CGAffineTransformMakeTranslation(0, imge.size.height+40);
    tAffine = CGAffineTransformScale(tAffine, 1,-1);
    CGContextConcatCTM(context, tAffine);
   
    //UI坐标系中位置
    CGRect touchRect = CGRectMake(0, 20, imge.size.width, imge.size.height);
    CGContextDrawImage(context, touchRect, imageRef);
    CGContextRestoreGState(context);
}


@end
