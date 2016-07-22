.class public Lcom/zhihu/android/api/model/SocialSetting;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "SocialSetting.java"


# instance fields
.field public enableWeibo:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "enable_weibo"
    .end annotation
.end field

.field public qqSetting:Lcom/zhihu/android/api/model/SocialInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "qqconn"
    .end annotation
.end field

.field public sinaSetting:Lcom/zhihu/android/api/model/SinaSocialInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sina"
    .end annotation
.end field

.field public wechatSetting:Lcom/zhihu/android/api/model/SocialInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "wechat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
