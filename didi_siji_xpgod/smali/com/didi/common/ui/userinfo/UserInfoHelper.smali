.class public Lcom/didi/common/ui/userinfo/UserInfoHelper;
.super Ljava/lang/Object;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    }
.end annotation


# static fields
.field private static count:I

.field private static info:Lcom/didi/common/ui/userinfo/UserInfo;

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$002(Lcom/didi/common/ui/userinfo/UserInfo;)Lcom/didi/common/ui/userinfo/UserInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput-object p0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->count:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput p0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->count:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 14
    sget v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/didi/common/ui/userinfo/UserInfoHelper;->count:I

    return v0
.end method

.method public static addListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V
    .locals 1
    .parameter "lis"

    .prologue
    .line 104
    if-eqz p0, :cond_0

    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 55
    sget-object v4, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    if-nez v4, :cond_1

    .line 56
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    :goto_0
    return-object v3

    .line 62
    :cond_0
    :try_start_0
    new-instance v2, Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-direct {v2}, Lcom/didi/common/ui/userinfo/UserInfo;-><init>()V

    .line 63
    .local v2, tmp:Lcom/didi/common/ui/userinfo/UserInfo;
    invoke-virtual {v2, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->parse(Ljava/lang/String;)V

    .line 65
    sput-object v2, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    sget-object v3, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    goto :goto_0

    .line 67
    .end local v2           #tmp:Lcom/didi/common/ui/userinfo/UserInfo;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getUserLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, ""

    .line 90
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserLevelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserWalletUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getWalletUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadUserInfo()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoHelper$1;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfoHelper$1;-><init>()V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getUserInfo(Lcom/didi/common/net/ResponseListener;)V

    .line 52
    return-void
.end method

.method public static notifyUserInfChange()V
    .locals 4

    .prologue
    .line 94
    sget-object v3, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 95
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 96
    sget-object v3, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

    .line 97
    .local v1, listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    if-nez v1, :cond_0

    .line 95
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v1}, Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;->onUserInfoChanged()V

    goto :goto_1

    .line 101
    .end local v1           #listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    :cond_1
    return-void
.end method

.method public static removeListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V
    .locals 1
    .parameter "lis"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/didi/common/ui/userinfo/UserInfoHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
