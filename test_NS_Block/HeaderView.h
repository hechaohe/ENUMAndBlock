//
//  HeaderView.h
//  test_NS_Block
//
//  Created by hc on 2017/4/27.
//  Copyright © 2017年 hc. All rights reserved.
//




#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,DirectionsAction){
    DirectionsActionLeft,
    DirectionsActionTop,
    DirectionsActionRight,
    DirectionsActionBottom
    
};

@interface HeaderView : UIView

@property (nonatomic,copy) void (^editingBlock)(DirectionsAction action);


@end
