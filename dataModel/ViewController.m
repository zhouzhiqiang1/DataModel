//
//  ViewController.m
//  dataModel
//
//  Created by r_zhou on 15/11/27.
//  Copyright © 2015年 r_zhou. All rights reserved.
//

#import "ViewController.h"
#import "GSDataDef.h"
#import "GSDataEngine.h"
#import "YDViewModel.h"

@interface ViewController ()
@property (strong, nonatomic) YDViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.viewModel = [[YDViewModel alloc] init];
    [self.viewModel fetchList];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -- Ation
- (IBAction)onDataButton:(id)sender {
    [[GSDataEngine shareEngine] addGetLocalDataActionTaskWithResponse:^(GSTaskResponse *aTaskResponse) {
        if (aTaskResponse.errorCode == GSErrorCMSuccess) {
            YDDataUserInfo *dataUserInfo = [[YDDataUserInfo alloc] initWithDictionary:aTaskResponse.data];
            NSLog(@"成功 %d", dataUserInfo.sex);
            NSLog(@"成功 %d", dataUserInfo.uid);
            NSLog(@"成功 %@", dataUserInfo.phone);
            NSLog(@"成功 %@", dataUserInfo.photo);
            NSLog(@"成功 %@", dataUserInfo.nickname);
        } else {
            NSLog(@"失败");
        }
    } userid:100004];
}

- (IBAction)onNSArrayButton:(id)sender {
    
 
    
    
    YDNetworkDataUserInfo *guestbookList = [self.viewModel objectAtIndex:0];
    
    NSLog(@"%@",guestbookList.title);
}

@end
