//
//  IBView.m
//  IBInspectable
//
//  Created by hyj on 16/5/29.
//  Copyright © 2016年 hyj. All rights reserved.
//

#import "IBView.h"

@interface IBView ()
//UI

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView * imageV;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

IB_DESIGNABLE
@implementation IBView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initFromXIB];
    }
    return self;
}



//xib
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initFromXIB];
    }
    return self;
}



- (void)initFromXIB{
    
    NSBundle * bundle = [NSBundle bundleForClass:self.class];
    UINib * nib = [UINib nibWithNibName:@"IBView" bundle:bundle];
    _contentView = [nib instantiateWithOwner:self options:nil].lastObject;
    _contentView.frame = self.bounds;
    
    [self addSubview:_contentView];
}


- (void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius  = _cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setBcolor:(UIColor *)bcolor{
    _bcolor = bcolor;
    self.layer.borderColor = _bcolor.CGColor;
}

- (void)setBwidth:(CGFloat)bwidth {
    _bwidth = bwidth;
    self.layer.borderWidth = _bwidth;
}

-(void)setButtonTitle:(NSString *)buttonTitle{
    _buttonTitle = buttonTitle;
    [self.btn setTitle:_buttonTitle forState:UIControlStateNormal];
}



-(void)setTitle:(NSString *)title{
    self.titleLabel.text = title;
//    [self setNeedsDisplay];
}
-(NSString *)title{
    return self.titleLabel.text;
}


-(void)setImage:(UIImage *)image{
    self.imageV.image = image;
//    [self setNeedsDisplay];
}

-(UIImage *)image{
    return self.imageV.image;
}


- (IBAction)click:(UIButton *)sender {
    NSLog(@"%@",_titleLabel.text);
}



@end
