.class public Lcom/didi/ddrive/helper/DriveAbilityHelper;
.super Ljava/lang/Object;
.source "DriveAbilityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MapFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDDriveIsOpen()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    const-string v0, "MapFragment"

    const-string v1, "drive open : false"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isDDriveRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 24
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 26
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 38
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v0, "MapFragment"

    const-string v1, "drive open : true"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public static isDriveSupport()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 46
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getBizSwitch()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmUpSwitch()I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
