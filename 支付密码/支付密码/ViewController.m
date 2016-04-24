//
//  ViewController.m
//  支付密码
//
//  Created by zhoupushan on 16/3/7.
//  Copyright © 2016年 www.niuduz.com. All rights reserved.
//

#import "ViewController.h"
#import "PSPayTextField.h"
@interface ViewController ()<PSPayTextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PSPayTextField *textFiled = [PSPayTextField textFieldFromXib];
    textFiled.center = self.view.center;
    textFiled.tag = 111;
    textFiled.delegate = self;
    [self.view addSubview:textFiled];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)ps_textField:(PSPayTextField *)textField textDidChange:(NSString *)text
{
    NSLog(@"ps_textField == %@",text);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    PSPayTextField *textField = [self.view viewWithTag:111];
    [textField ps_resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
