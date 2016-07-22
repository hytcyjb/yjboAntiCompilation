.class Lcom/didi/car/business/CarOrderLooper$1;
.super Landroid/os/Handler;
.source "CarOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/business/CarOrderLooper;
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
    .line 139
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v1}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onGetState()V

    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOrderDoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z
    invoke-static {v1}, Lcom/didi/car/business/CarOrderLooper;->access$100(Lcom/didi/car/business/CarOrderLooper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->isHandStop:Z
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$100(Lcom/didi/car/business/CarOrderLooper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$1;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #calls: Lcom/didi/car/business/CarOrderLooper;->doGetStateThread()V
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$200(Lcom/didi/car/business/CarOrderLooper;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
