//
//  ViewController.m
//  SWTextField_TextView
//
//  Created by 石文文 on 16/7/9.
//  Copyright © 2016年 石文文. All rights reserved.
//

#import "ViewController.h"
#import "SWTextField.h"
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc]initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    CGFloat top = 70;
    for (int i =0 ; i< 6; i++) {
        
        SWTextField *textField = [[SWTextField alloc]initWithFrame:CGRectMake(50, top +((SCREEN_HEIGHT-140 - 5*30)/6+10)*i, SCREEN_WIDTH - 100, (SCREEN_HEIGHT-140-5*30)/6)];
        textField.placeholder = @"请输入";
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [view addSubview:textField];
        textField.autoAdjustLayoutView = view;
        
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
