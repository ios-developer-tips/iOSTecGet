//
//  SWEncryptAndDecryptViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/8.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWEncryptAndDecryptViewController.h"
// Owl
// 对应ASII码:                               21 32 55
// 转化成对应的二进制编码:            00010101   00100000  00110111
// 划分为4组二进制编码，每组6位：000101   010010  000000  110111
// 高位部分补零：                         00000101   00100010   00000000   00110111
@interface SWEncryptAndDecryptViewController ()

@end

@implementation SWEncryptAndDecryptViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"guide01"];
    NSData *data = [UIImagePNGRepresentation(image) base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
    // 此处重新获取NSData对象，需要先进行解码
    NSData *data2 = [[NSData alloc]initWithBase64EncodedData:data options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UIImage *encryptedImage =  [UIImage imageWithData:data2];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:imageView];
    imageView.image = encryptedImage;
}
@end
