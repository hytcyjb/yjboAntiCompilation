.class Lcom/didi/car/business/CarOrderLooper$2;
.super Ljava/lang/Object;
.source "CarOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/business/CarOrderLooper;->doGetStateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/business/CarOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/car/business/CarOrderLooper;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "CarOrderDoState"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$300(Lcom/didi/car/business/CarOrderLooper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/car/business/CarOrderLooper;->access$300(Lcom/didi/car/business/CarOrderLooper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    .line 177
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$2;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onCarGetState()V

    .line 179
    :cond_0
    return-void
.end method
