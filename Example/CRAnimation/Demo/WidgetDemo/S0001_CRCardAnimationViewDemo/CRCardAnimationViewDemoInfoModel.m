//
//  CRCardAnimationViewDemoInfoModel.m
//  CRAnimation
//
//  Created by Bear on 16/10/12.
//  Copyright © 2016年 BearRan. All rights reserved.
//

#import "CRCardAnimationViewDemoInfoModel.h"

@implementation CRCardAnimationViewDemoInfoModel

- (void)fillDemoInfo
{
    self.demoVCName     = @"CRCardAnimationViewDemoVC";
    self.demoGifName    = @"S0001_CRCardAnimation_20170322.gif";
    self.demoType       = kCRDemoTypeStorage;
    self.CRID           = @"S0001";
    self.demoName       = @"CRCardAnimationView";
    self.demoSummary    = @"卡片切换动效";
    self.detailDesc     = @"这是一款卡片式切换的动画效果，使用代理方法设置每个cell，类似于UITableView，便于集成。";
    self.codeLanguage   = kCRLanguageTypeObjectiveC;
    
    self.originGitHubAddress    = @"https://github.com/BearRan/CRAnimation";
    self.homePage               = @"https://github.com/BearRan/CRAnimation";

    
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
