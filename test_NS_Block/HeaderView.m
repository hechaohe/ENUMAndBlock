//
//  HeaderView.m
//  test_NS_Block
//
//  Created by hc on 2017/4/27.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)left:(id)sender {
    !self.editingBlock ? : self.editingBlock(DirectionsActionLeft);
}


- (IBAction)top:(id)sender {
    !self.editingBlock ? : self.editingBlock(DirectionsActionTop);
}


- (IBAction)right:(id)sender {
    !self.editingBlock ? : self.editingBlock(DirectionsActionRight);
}


- (IBAction)bottom:(id)sender {
    !self.editingBlock ? : self.editingBlock(DirectionsActionBottom);
}

@end
