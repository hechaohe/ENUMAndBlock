//
//  DelegateView.h
//  test_NS_Block
//
//  Created by hc on 2017/4/27.
//  Copyright © 2017年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MenueDelegate <NSObject>

@optional

- (void)menueClicked;

@end


@interface DelegateView : UIView



@property (nonatomic,strong) id<MenueDelegate>delegate;

@end
