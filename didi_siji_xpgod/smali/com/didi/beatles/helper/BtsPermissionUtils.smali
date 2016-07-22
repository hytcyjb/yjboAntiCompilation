.class public Lcom/didi/beatles/helper/BtsPermissionUtils;
.super Ljava/lang/Object;
.source "BtsPermissionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndShowLocationPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const-string p1, "\u60a8\u9700\u8981\u6253\u5f00\u5b9a\u4f4d\u6743\u9650\uff0c\u624d\u53ef\u4ee5\u7ee7\u7eed\u54e6\uff01"

    .line 30
    :cond_0
    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    :cond_1
    :goto_0
    return v1

    .line 34
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->isLocateLimit()Z

    move-result v0

    .line 35
    .local v0, limit:Z
    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0, p1}, Lcom/didi/beatles/helper/BtsPermissionUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isGpsOPen(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 45
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 48
    .local v1, locationManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 51
    .local v0, gps:Z
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, network:Z
    if-eqz v0, :cond_0

    .line 54
    const/4 v3, 0x1

    .line 57
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static showAlert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 61
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 64
    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 65
    new-instance v1, Lcom/didi/beatles/helper/BtsPermissionUtils$1;

    invoke-direct {v1}, Lcom/didi/beatles/helper/BtsPermissionUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 78
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 79
    return-void
.end method
