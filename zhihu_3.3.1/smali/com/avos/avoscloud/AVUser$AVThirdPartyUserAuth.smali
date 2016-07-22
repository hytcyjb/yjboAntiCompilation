.class public Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
.super Ljava/lang/Object;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVThirdPartyUserAuth"
.end annotation


# static fields
.field public static final SNS_SINA_WEIBO:Ljava/lang/String; = "weibo"

.field public static final SNS_TENCENT_WEIBO:Ljava/lang/String; = "qq"

.field public static final SNS_TENCENT_WEIXIN:Ljava/lang/String; = "weixin"


# instance fields
.field accessToken:Ljava/lang/String;

.field expiredAt:Ljava/lang/String;

.field snsType:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2115
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    .line 2116
    iput-object p3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    .line 2117
    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    .line 2118
    iput-object p4, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    .line 2119
    return-void
.end method

.method protected static platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2122
    const-string v0, "qq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weixin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2123
    :cond_0
    const-string v0, "openid"

    .line 2125
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "uid"

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    .line 2135
    return-void
.end method

.method public setExpireAt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    .line 2151
    return-void
.end method

.method public setSnsType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2158
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    .line 2159
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    .line 2143
    return-void
.end method
