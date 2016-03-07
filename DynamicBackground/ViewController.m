//
//  ViewController.m
//  DynamicBackground
//
//  Created by Wang on 16/3/7.
//  Copyright © 2016年 WangJace. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Dynamic" ofType:@"gif"];
    NSData *dynamicData = [NSData dataWithContentsOfFile:path];
    [_myWebView loadData:dynamicData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
