.class public Lcom/didi/common/helper/BusinessHelper;
.super Ljava/lang/Object;
.source "BusinessHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/didi/common/helper/BusinessHelper;->redirectToBusiness(Lcom/didi/frame/business/Business;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/didi/common/helper/BusinessHelper;->toBusinessByCache()V

    return-void
.end method

.method private static redirectToBusiness(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "bus"

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/didi/frame/switcher/SwitcherHelper;->hasBusiness(Lcom/didi/frame/business/Business;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_2

    .line 61
    sget-object p0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    .line 63
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_3

    .line 64
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 67
    :cond_3
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_4

    .line 68
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 70
    :cond_4
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 71
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_5

    .line 72
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenFlier()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 79
    :cond_5
    :goto_1
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_0

    .line 80
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 75
    :cond_6
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 76
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    goto :goto_1

    .line 83
    :cond_7
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 84
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public static toBusiness()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/didi/common/helper/BusinessHelper$1;

    invoke-direct {v0}, Lcom/didi/common/helper/BusinessHelper$1;-><init>()V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getBusinessConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 35
    return-void
.end method

.method private static toBusinessByCache()V
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    .line 40
    .local v2, preferences:Lcom/didi/common/config/Preferences;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getTabMemory()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 41
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getSwitcherPannel()I

    move-result v1

    .line 44
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 51
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v1       #index:I
    :cond_1
    invoke-static {v1}, Lcom/didi/frame/business/Business;->getBusiness(I)Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 49
    .local v0, bus:Lcom/didi/frame/business/Business;
    invoke-static {v0}, Lcom/didi/common/helper/BusinessHelper;->redirectToBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method
