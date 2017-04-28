//
//  DelegateView.m
//  test_NS_Block
//
//  Created by hc on 2017/4/27.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "DelegateView.h"

@implementation DelegateView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        NSArray *arr = @[@"good",@"better",@"best",];
        
        for (int i = 0; i<3; i++) {
            UIButton *btn = [UIButton buttonWithType:0];
            btn.backgroundColor = [UIColor whiteColor];
            btn.frame = CGRectMake(10 + i*100, 20, 80, 30);
            [btn setTitle:[arr objectAtIndex:i] forState:UIControlStateNormal];
            [btn setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
            
            [self addSubview:btn];
        }
        
        
        
    }
    return self;
}
- (void)btnAction:(UIButton *)sender {
    
    NSLog(@"btn clicked");
    
    if ([_delegate respondsToSelector:@selector(menueClicked)]) {
        [_delegate menueClicked];
    }
    
}


@end
