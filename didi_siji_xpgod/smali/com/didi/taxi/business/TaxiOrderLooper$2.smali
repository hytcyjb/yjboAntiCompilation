.class Lcom/didi/taxi/business/TaxiOrderLooper$2;
.super Ljava/lang/Object;
.source "TaxiOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/business/TaxiOrderLooper;->doGetStateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/business/TaxiOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$2;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "TaxiOrderDoState"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$2;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    iget-object v0, v0, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$2;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    iget-object v1, v1, Lcom/didi/taxi/business/TaxiOrderLooper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$2;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$2;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    .line 246
    :cond_0
    return-void
.end method
