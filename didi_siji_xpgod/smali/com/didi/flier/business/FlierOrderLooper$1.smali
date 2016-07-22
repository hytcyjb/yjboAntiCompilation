.class Lcom/didi/flier/business/FlierOrderLooper$1;
.super Landroid/os/Handler;
.source "FlierOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/business/FlierOrderLooper;
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
    .line 136
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    goto :goto_0

    .line 146
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlierOrderDoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z
    invoke-static {v1}, Lcom/didi/flier/business/FlierOrderLooper;->access$100(Lcom/didi/flier/business/FlierOrderLooper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->isHandStop:Z
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$100(Lcom/didi/flier/business/FlierOrderLooper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$1;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #calls: Lcom/didi/flier/business/FlierOrderLooper;->doGetStateThread()V
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$200(Lcom/didi/flier/business/FlierOrderLooper;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
