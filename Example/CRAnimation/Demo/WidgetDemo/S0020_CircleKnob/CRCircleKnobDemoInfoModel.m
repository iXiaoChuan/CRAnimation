//
//  CRCircleKnobDemoInfoModel.m
//  CRAnimation
//
//  Created by Bear on 2017/7/19.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import "CRCircleKnobDemoInfoModel.h"

@implementation CRCircleKnobDemoInfoModel

- (void)fillDemoInfo
{
    self.demoVCName     = @"CircleKnobDemoVC";
    self.demoGifName    = @"S0019_CRNumberFaded.gif";
    self.demoType       = kCRDemoTypeStorage;
    self.CRID           = @"S0019";
    self.demoName       = @"CRNumberFaded";
    self.demoSummary    = @"旋钮动效";
    self.detailDesc     = @"这是一个旋钮动画效果";
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
