.class Lcom/didi/car/business/CarOrderLooper$3$1;
.super Ljava/lang/Object;
.source "CarOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/business/CarOrderLooper$3;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/business/CarOrderLooper$3;


# direct methods
.method constructor <init>(Lcom/didi/car/business/CarOrderLooper$3;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/didi/car/business/CarOrderLooper$3$1;->this$1:Lcom/didi/car/business/CarOrderLooper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$3$1;->this$1:Lcom/didi/car/business/CarOrderLooper$3;

    iget-object v0, v0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/didi/car/business/CarOrderLooper$3$1;->this$1:Lcom/didi/car/business/CarOrderLooper$3;

    iget-object v0, v0, Lcom/didi/car/business/CarOrderLooper$3;->this$0:Lcom/didi/car/business/CarOrderLooper;

    #getter for: Lcom/didi/car/business/CarOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/car/business/CarOrderLooper;->access$000(Lcom/didi/car/business/CarOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onRedict()V

    .line 288
    :cond_0
    return-void
.end method
