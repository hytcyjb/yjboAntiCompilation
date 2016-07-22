.class Lcom/didi/activity/ui/fragment/SendOrderHelper$3;
.super Ljava/lang/Object;
.source "SendOrderHelper.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkProtectAndSendOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$3;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 210
    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 211
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$3;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendOrder()V
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$300(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    .line 212
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    const v0, 0x7f0b0497

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 202
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 203
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 204
    invoke-static {v2}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 205
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$3;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendOrder()V
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$300(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    .line 206
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
