.class Lcom/didi/taxi/ui/component/ShareView$3$2;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView$3;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/ShareView$3;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$3$2;->this$1:Lcom/didi/taxi/ui/component/ShareView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 529
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, arg2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 512
    const-string v0, "my_trip_sina_successed"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 514
    const-string v0, "taxi_my_trip_sina_successed"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView$3$2;->this$1:Lcom/didi/taxi/ui/component/ShareView$3;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/ShareView$3;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_suc_channel_ck"

    const-string v3, "3"

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 518
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    const-string v1, "pay_share_suc_channel_ck"

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_2
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView$3$2$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/ShareView$3$2$2;-><init>(Lcom/didi/taxi/ui/component/ShareView$3$2;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 502
    new-instance v0, Lcom/didi/taxi/ui/component/ShareView$3$2$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/ShareView$3$2$1;-><init>(Lcom/didi/taxi/ui/component/ShareView$3$2;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method
