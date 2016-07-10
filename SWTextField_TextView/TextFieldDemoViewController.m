//
//  TextFieldDemoViewController.m
//  SWTextField_TextView
//
//  Created by 石文文 on 16/7/10.
//  Copyright © 2016年 石文文. All rights reserved.
//

#import "TextFieldDemoViewController.h"
#import "SWTextField.h"
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@interface TextFieldDemoViewController ()

@end

@implementation TextFieldDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGFloat top = 70;
    for (int i =0 ; i< 6; i++) {
        
        SWTextField *textField = [[SWTextField alloc]initWithFrame:CGRectMake(50, top +((SCREEN_HEIGHT-140 - 5*30)/6+10)*i, SCREEN_WIDTH - 100, (SCREEN_HEIGHT-140-5*30)/6)];
        textField.placeholder = @"请输入";
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
        textField.autoAdjustLayoutView = self.view;
        
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
