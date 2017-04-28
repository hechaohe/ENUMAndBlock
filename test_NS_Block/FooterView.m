//
//  FooterView.m
//  test_NS_Block
//
//  Created by hc on 2017/4/26.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "FooterView.h"

@implementation FooterView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)save:(id)sender {
    !self.editFooterActionBlock ? : self.editFooterActionBlock(EditFooterActionSave);
}
- (IBAction)publish:(id)sender {
    !self.editFooterActionBlock ? : self.editFooterActionBlock(EditFooterActionPublish);
}
- (IBAction)delete:(id)sender {
    !self.editFooterActionBlock ? : self.editFooterActionBlock(EditFooterActionDelete);
}

@end
