//
//  FooterView.h
//  test_NS_Block
//
//  Created by hc on 2017/4/26.
//  Copyright © 2017年 hc. All rights reserved.
//



#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,EditFooterAction){
    EditFooterActionSave,
    EditFooterActionPublish,
    EditFooterActionDelete
};

@interface FooterView : UIView

@property (nonatomic,copy) NSString *time;

@property (nonatomic,copy) void(^editFooterActionBlock)(EditFooterAction action);



//@property (nonatomic,copy) void(^myBlack)(NSInteger action);

@end
