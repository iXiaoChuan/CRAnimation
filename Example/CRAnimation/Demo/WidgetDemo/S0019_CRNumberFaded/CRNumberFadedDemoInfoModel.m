//
//  CRNumberFadedDemoInfoModel.m
//  CRAnimation
//
//  Created by Bear on 2017/7/19.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import "CRNumberFadedDemoInfoModel.h"

@implementation CRNumberFadedDemoInfoModel

- (void)fillDemoInfo
{
    self.demoVCName     = @"PerformanceVC";
    self.demoGifName    = @"S0001_CRCardAnimation_20170322.gif";
    self.demoType       = kCRDemoTypeStorage;
    self.CRID           = @"S0019";
    self.demoName       = @"CRNumberFaded";
    self.demoSummary    = @"数字切换动效";
    self.detailDesc     = @"这是一款数字切换动画效果";
    self.codeLanguage   = kCRLanguageTypeObjectiveC;
    self.developStatus  = kCRDevelopStatus_Developed;
    
    self.originGitHubAddress    = @"https://github.com/CRAnimation/CRAnimation";
    self.homePage               = @"https://github.com/CRAnimation/CRAnimation";
    
    
}

- (CRMemberInfoModel *)authorInfo
{
    CRMemberInfoModel *authorInfo = [CRMemberInfoModel new];
    authorInfo.realName = @"";
    authorInfo.nickName = @"Bear";
    authorInfo.mail     = @"648070256@qq.com";
    authorInfo.qq       = @"648070256";
    authorInfo.homePage = @"https://github.com/BearRan/CRAnimation";
    authorInfo.professionType = kProfessionTypeiOSDeveloper;
    
    return authorInfo;
}

@end
