.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;
.super Landroid/os/Handler;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    invoke-static {}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1300()I

    move-result v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$800(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/car/model/CarPayParams;

    move-result-object v1

    iget v1, v1, Lcom/didi/car/model/CarPayParams;->pollingTimes:I

    if-le v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->cancelPayResultCheckAlarm()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1400(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 291
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1302(I)I

    .line 292
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1300()I

    move-result v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    iget-object v2, v2, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->listener:Lcom/didi/common/net/ResponseListener;

    invoke-static {v0, v1, v2}, Lcom/didi/car/net/CarRequest;->getWxAgentStatus(IILcom/didi/common/net/ResponseListener;)V

    .line 296
    invoke-static {}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1308()I

    goto :goto_0
.end method
