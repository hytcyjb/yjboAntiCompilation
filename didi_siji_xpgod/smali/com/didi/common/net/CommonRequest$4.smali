.class final Lcom/didi/common/net/CommonRequest$4;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/net/CommonRequest;->addPushUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 950
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Lcom/didi/car/helper/CarNotificationCountHelper;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/helper/CarNotificationCountHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/didi/car/helper/CarNotificationCountHelper;->resetNotification()V

    .line 955
    :cond_0
    return-void
.end method
