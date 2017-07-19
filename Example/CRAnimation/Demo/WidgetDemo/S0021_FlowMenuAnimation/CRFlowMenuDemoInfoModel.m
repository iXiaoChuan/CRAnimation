//
//  CRFlowMenuDemoInfoModel.m
//  CRAnimation
//
//  Created by Bear on 2017/7/19.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import "CRFlowMenuDemoInfoModel.h"

@implementation CRFlowMenuDemoInfoModel

- (void)fillDemoInfo
{
    self.demoVCName     = @"FlowMenuDemoVC";
    self.demoGifName    = @"S0020_CircleKnob.gif";
    self.demoType       = kCRDemoTypeStorage;
    self.CRID           = @"S0021";
    self.demoName       = @"CRNumberFaded";
    self.demoSummary    = @"滚珠菜单动效";
    self.detailDesc     = @"这是一个滚珠菜单动画效果";
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
