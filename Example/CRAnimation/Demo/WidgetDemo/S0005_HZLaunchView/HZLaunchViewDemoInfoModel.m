//
//  HZLaunchViewDemoInfoModel.m
//  CRAnimation
//
//  Created by zz go on 2016/10/27.
//  Copyright © 2016年 BearRan. All rights reserved.
//

#import "HZLaunchViewDemoInfoModel.h"

@implementation HZLaunchViewDemoInfoModel

- (void)fillDemoInfo
{
    self.demoVCName     = @"HZLaunchViewDemoVC";
    self.demoGifName    = @"S0005_HZLaunchView_20170322.gif";
    self.demoType       = kCRDemoTypeStorage;
    self.CRID           = @"S0005";
    self.demoName       = @"HZLaunchView";
    self.demoSummary    = @"仿推特开场动效";
    self.codeLanguage   = kCRLanguageTypeObjectiveC;
    
    self.originGitHubAddress            = @"https://github.com/zzgo/TwitterLaunchDemo";
    self.homePage                       = @"";

    
}

- (CRMemberInfoModel *)authorInfo
{
    CRMemberInfoModel *authorInfo = [CRMemberInfoModel new];
    authorInfo.realName = @"";
    authorInfo.nickName = @"zzgo";
    authorInfo.mail     = @"zzgocc@gmail.com";
    authorInfo.homePage = @"http://zzgoblog.cc";
    authorInfo.qq       = @"531818100";
    authorInfo.professionType = kProfessionTypeiOSDeveloper;
    
    return authorInfo;
}

@end
