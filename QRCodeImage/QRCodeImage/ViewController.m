//
//  ViewController.m
//  QRCodeImage
//
//  Created by jarvis jiang on 16/8/18.
//  Copyright © 2016年 jarvis jiang. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initQRCode];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)initQRCode
{
    CGFloat w=[UIScreen mainScreen].bounds.size.width;
    NSArray*arr=@[[QRCodeGenerator qrImageForString:@"Key" imageSize:400],
                  [QRCodeGenerator qrImageForString:@"key1" imageSize:400 Topimg:[UIImage imageNamed:@"super.jpg"]],
                  [QRCodeGenerator qrImageForString:@"key2" imageSize:400 withPointType:QRPointRect withPositionType:QRPositionNormal withColor:[UIColor yellowColor]],
                  [QRCodeGenerator qrImageForString:@"key3" imageSize:400 withPointType:QRPointRound withPositionType:QRPositionRound withColor:[UIColor redColor]],
                  [QRCodeGenerator qrImageForString:@"key4" imageSize:400 withPointType:QRPointRect withPositionType:QRPositionRound withColor:[UIColor blueColor]],
                  [QRCodeGenerator qrImageForString:@"key5" imageSize:400 withPointType:QRPointRound withPositionType:QRPositionNormal withColor:[UIColor purpleColor]]];
    for (int i=0; i<6; i++) {
        UIImageView*QRCode=[[UIImageView alloc]initWithFrame:CGRectMake(i%3*w/3, (i/3)*w/3, w/3, w/3)];
        QRCode.image=arr[i];
        [self.view addSubview:QRCode];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
