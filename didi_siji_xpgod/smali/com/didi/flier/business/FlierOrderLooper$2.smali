.class Lcom/didi/flier/business/FlierOrderLooper$2;
.super Ljava/lang/Object;
.source "FlierOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/business/FlierOrderLooper;->doGetStateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/business/FlierOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/flier/business/FlierOrderLooper;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "FlierOrderDoState"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$300(Lcom/didi/flier/business/FlierOrderLooper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/flier/business/FlierOrderLooper;->access$300(Lcom/didi/flier/business/FlierOrderLooper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    .line 174
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$2;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onCarGetState()V

    .line 176
    :cond_0
    return-void
.end method
