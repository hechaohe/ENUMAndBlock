//
//  ViewController.m
//  test_NS_Block
//
//  Created by hc on 2017/4/26.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "ViewController.h"
#import "FooterView.h"
#import "HeaderView.h"
#import "DelegateView.h"
@interface ViewController () <MenueDelegate>
@property(nonatomic,strong) DelegateView *delegateView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    FooterView *footer = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([FooterView class]) owner:self options:nil] lastObject];
//    footer.backgroundColor = [UIColor brownColor];
    footer.frame = CGRectMake(10, 20, 300, 200);
    [self.view addSubview:footer];
    
    
    footer.editFooterActionBlock = ^(EditFooterAction action) {
        if (action ==EditFooterActionSave) {
            NSLog(@"save");
        
            
            
        } else if (action == EditFooterActionPublish) {
            
            UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"Publish?" message:@"Publish it" preferredStyle:UIAlertControllerStyleActionSheet];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:nil];
            UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"Other" style:UIAlertActionStyleDefault handler:nil];
            
            [alertC addAction:cancelAction];
            [alertC addAction:okAction];
            [alertC addAction:otherAction];
            
            [self presentViewController:alertC animated:YES completion:nil];
            
            
            
            NSLog(@"publish");
        } else if(action == EditFooterActionDelete) {
            NSLog(@"delete");
            
            UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"Are you sure?" message:@"Delete forver" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:nil];
            
            [alertC addAction:cancelAction];
            [alertC addAction:okAction];
            
            [self presentViewController:alertC animated:YES completion:nil];
            
        }
    };
    
    
//    footer.myBlack = ^(NSInteger action) {
//        if (action == EditFooterActionSave) {
//            NSLog(@"");
//        } else if (action == EditFooterActionSave) {
//            NSLog(@"");
//        }
//    };
//    
    
    
//    4025 5336 9604
    
    
    
    
//    
//    HeaderView *header = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([HeaderView class]) owner:self options:nil]lastObject];
//    header.frame = CGRectMake(20, 300, self.view.frame.size.width, 200);
//    header.backgroundColor = [UIColor brownColor];
//    [self.view addSubview:header];
//    
//    
//    
//    
//    header.editingBlock = ^(DirectionsAction action) {
//        switch (action) {
//            case DirectionsActionBottom:
//                NSLog(@"bottom");
//                break;
//            case DirectionsActionLeft:
//                NSLog(@"left");
//                break;
//            case DirectionsActionTop:
//                NSLog(@"top");
//                break;
//            case DirectionsActionRight:
//                NSLog(@"right");
//                break;
//            
//            default:
//                break;
//        }
//    };
    
    [self deleView];
}
- (void)deleView {
    _delegateView = [[DelegateView alloc] initWithFrame:CGRectMake(20, 300, self.view.frame.size.width - 40, 100)];
    _delegateView.backgroundColor = [UIColor whiteColor];
    _delegateView.delegate = self;
    [self.view addSubview:_delegateView];
}


- (void)menueClicked {
    NSLog(@".........");
}











@end
