.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->wxAgentShouldToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarWxAgentLayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarWxAgentLayer;)V
    .locals 5
    .parameter "params"

    .prologue
    .line 2471
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 2472
    invoke-virtual {p1}, Lcom/didi/car/model/CarWxAgentLayer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2473
    iget v0, p1, Lcom/didi/car/model/CarWxAgentLayer;->payst:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->RIGHT:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v2, p1, Lcom/didi/car/model/CarWxAgentLayer;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/car/model/CarWxAgentLayer;->content:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2475
    const-string v0, "wanliu_wxagent_car_show_success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2476
    :cond_1
    iget v0, p1, Lcom/didi/car/model/CarWxAgentLayer;->payst:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v2, p1, Lcom/didi/car/model/CarWxAgentLayer;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/car/model/CarWxAgentLayer;->content:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2467
    check-cast p1, Lcom/didi/car/model/CarWxAgentLayer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;->onFinish(Lcom/didi/car/model/CarWxAgentLayer;)V

    return-void
.end method
