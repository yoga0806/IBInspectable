//
//  IBView.h
//  IBInspectable
//
//  Created by hyj on 16/5/29.
//  Copyright © 2016年 hyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBView : UIView
//属性
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign)IBInspectable CGFloat bwidth;
@property (nonatomic, assign)IBInspectable UIColor *bcolor;

@property (nonatomic, assign)IBInspectable NSString *title;
@property (nonatomic, assign)IBInspectable UIImage *image;

@property (nonatomic, assign)IBInspectable NSString *buttonTitle;



@end
