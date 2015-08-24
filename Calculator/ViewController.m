//
//  ViewController.m
//  Calculator
//
//  Created by XuLee on 15/7/2.
//  Copyright (c) 2015年 XuLee. All rights reserved.
//

#import "ViewController.h"
#define HEIGHT     [[UIScreen mainScreen] bounds].size.height
#define WIDTH      [[UIScreen mainScreen] bounds].size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creat];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)creat{
    UIImage *num001 = [UIImage imageNamed:@"001.png"];
    UIImage *num002 = [UIImage imageNamed:@"002.png"];
    UIImage *num101 = [UIImage imageNamed:@"101.png"];
    UIImage *num102 = [UIImage imageNamed:@"102.png"];
    UIImage *num201 = [UIImage imageNamed:@"201.png"];
    UIImage *num202 = [UIImage imageNamed:@"202.png"];
    UIImage *num301 = [UIImage imageNamed:@"301.png"];
    UIImage *num302 = [UIImage imageNamed:@"302.png"];
    UIImage *num401 = [UIImage imageNamed:@"401.png"];
    UIImage *num402 = [UIImage imageNamed:@"402.png"];
    UIImage *num501 = [UIImage imageNamed:@"501.png"];
    UIImage *num502 = [UIImage imageNamed:@"502.png"];
    UIImage *num601 = [UIImage imageNamed:@"601.png"];
    UIImage *num602 = [UIImage imageNamed:@"602.png"];
    UIImage *num701 = [UIImage imageNamed:@"701.png"];
    UIImage *num702 = [UIImage imageNamed:@"702.png"];
    UIImage *num801 = [UIImage imageNamed:@"801.png"];
    UIImage *num802 = [UIImage imageNamed:@"801.png"];
    UIImage *num901 = [UIImage imageNamed:@"901.png"];
    UIImage *num902 = [UIImage imageNamed:@"902.png"];
    
    
    UIImage *calj01 = [UIImage imageNamed:@"j01.png"];
    UIImage *calj02 = [UIImage imageNamed:@"j02.png"];
    UIImage *caljj01 = [UIImage imageNamed:@"jj01.png"];
    UIImage *caljj02 = [UIImage imageNamed:@"jj02.png"];
    UIImage *calc01 = [UIImage imageNamed:@"c01.png"];
    UIImage *calc02 = [UIImage imageNamed:@"c02.png"];
    UIImage *calcc01 = [UIImage imageNamed:@"cc01.png"];
    UIImage *calcc02 = [UIImage imageNamed:@"cc02.png"];
    UIImage *cald01 = [UIImage imageNamed:@"d01.png"];
    UIImage *cald02 = [UIImage imageNamed:@"d02.png"];
    UIImage *caldd = [UIImage imageNamed:@"dd01.png"];
    
    
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 40, WIDTH - 40, 80)];
    _label.backgroundColor = [UIColor blackColor];
    _label.textColor = [UIColor whiteColor];
    _label.textAlignment = NSTextAlignmentRight;
    _label.font = [UIFont systemFontOfSize:30];
    _label.lineBreakMode = NSLineBreakByTruncatingHead;
    _label.text = @"0";
    [self.view addSubview:_label];
    
    UIButton *clearBtn = [[UIButton alloc]initWithFrame:CGRectMake(20, 130, (WIDTH-55)/4, (WIDTH-55)/4)];
    //    clearBtn.backgroundColor = [UIColor grayColor];
    [clearBtn setTitle:@"C" forState:UIControlStateNormal];
    //    [clearBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [clearBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [clearBtn setImage:[UIImage imageNamed:@"ccc01.png"] forState:UIControlStateNormal];
    clearBtn.tag = 1;
    [clearBtn addTarget:self action:@selector(deleteInfo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearBtn];
    
    UIButton *deleteBtn = [[UIButton alloc]initWithFrame:CGRectMake(WIDTH-100, 130, (WIDTH-55)/4, (WIDTH-55)/4)];
    deleteBtn.tag = 2;
    //    deleteBtn.backgroundColor = [UIColor grayColor];
    [deleteBtn setTitle:@"<-" forState:UIControlStateNormal];
    //    [deleteBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [deleteBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [deleteBtn setImage:[UIImage imageNamed:@"t02.png"] forState:UIControlStateNormal];
    [deleteBtn setImage:[UIImage imageNamed:@"t01.png"] forState:UIControlStateHighlighted];
    [deleteBtn addTarget:self action:@selector(deleteInfo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:deleteBtn];
    NSArray *arr = [NSArray arrayWithObjects:@"1",@"2",@"3",@"+",@"4",@"5",@"6",@"-",@"7",@"8",@"9",@"x",@".",@"0",@"=",@"/", nil];
    NSArray *back01 = @[num101,num201,num301,calj02,num401,num501,num601,caljj02,num701,num801,num901,calc02,caldd,num001,cald02,calcc02];
    NSArray *back02 = @[num102,num202,num302,calj01,num402,num502,num602,caljj01,num702,num802,num902,calc01,caldd,num002,cald01,calcc01];
    for (int i = 0; i< arr.count; i++) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20+i%4*((WIDTH-55)/4 + 5), 220+i/4 * ((WIDTH-55)/4 +5), (WIDTH-55)/4, (WIDTH-55)/4)];
        btn.tag = i+1;
        //        btn.backgroundColor = [UIColor grayColor];
        [btn setImage:[back01 objectAtIndex:i] forState:UIControlStateNormal];
        [btn setImage:[back02 objectAtIndex:i] forState:UIControlStateHighlighted];
        [btn setTitle:[arr objectAtIndex:i] forState:UIControlStateNormal];
        //        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(manage:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        
    }
    flag = NO;
    a = 0;
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)deleteInfo:(UIButton *)btn{
    if (btn.tag == 1) {
        _label.text = @"0";
        a = 0;
        // [result setString:@""];
    }else{
        if (_label.text.length == 1) {
            _label.text = @"0";
            // [result setString:@""];
            return;
        }
        //  NSLog(@"1111");
        _label.text = [_label.text substringToIndex:_label.text.length-1];
    }
}
-(void)manage:(UIButton *)btn{
    // NSString *s = btn.titleLabel.text;
    if (btn.tag%4 == 0||btn.tag == 15) {
        flag = YES;
        b = a;
        a = (int)btn.tag;
        //  NSLog(@"%f",b);
        if (b == 0) {
            result = [_label.text floatValue];
        }else{
            switch (b/4) {
                case 1:
                    result  += [_label.text floatValue];
                    break;
                case 2:
                    result  -= [_label.text floatValue];
                    break;
                case 3:
                    result  *= [_label.text floatValue];
                    break;
                case 4:
                    result  /= [_label.text floatValue];
                    break;                default:
                    
                    break;
            }
            
        }
        // sw
        if (result > (int)result) {
            _label.text = [NSString stringWithFormat:@"%.2f",result];
        }else{
            _label.text = [NSString stringWithFormat:@"%d",(int)result];
        }
        if (btn.tag == 15) {
            result = 0;
            a = 0;
        }
        
    }else if(btn.tag != 13){
        if ([_label.text isEqualToString:@"0"]) {
            _label.text = @"";
        }
        if (flag == YES) {
            flag = NO;
            _label.text = @"";
        }
        if (btn.tag == 14) {
            _label.text = [_label.text stringByAppendingString:@"0"];
        }else{
            _label.text = [_label.text stringByAppendingFormat:@"%zi",btn.tag - btn.tag/4];
        }
    }else{
        NSRange range = [_label.text rangeOfString:@"."];
        if (range.location == NSNotFound) {
            _label.text = [_label.text stringByAppendingString:@"."];
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
