.class public Lcom/didi/common/helper/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLogin()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCompanyAddress()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 37
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyLongitude()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyLatitude()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 41
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    .line 42
    return-object v0
.end method

.method public static getHomeAddress()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 27
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeLongitude()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeLatitude()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 31
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    .line 32
    return-object v0
.end method

.method public static hasCompanyAddress()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHomeAddress()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLogin()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
