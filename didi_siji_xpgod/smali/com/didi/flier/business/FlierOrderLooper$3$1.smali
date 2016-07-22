.class Lcom/didi/flier/business/FlierOrderLooper$3$1;
.super Ljava/lang/Object;
.source "FlierOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/business/FlierOrderLooper$3;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/flier/business/FlierOrderLooper$3;


# direct methods
.method constructor <init>(Lcom/didi/flier/business/FlierOrderLooper$3;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/didi/flier/business/FlierOrderLooper$3$1;->this$1:Lcom/didi/flier/business/FlierOrderLooper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$3$1;->this$1:Lcom/didi/flier/business/FlierOrderLooper$3;

    iget-object v0, v0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/didi/flier/business/FlierOrderLooper$3$1;->this$1:Lcom/didi/flier/business/FlierOrderLooper$3;

    iget-object v0, v0, Lcom/didi/flier/business/FlierOrderLooper$3;->this$0:Lcom/didi/flier/business/FlierOrderLooper;

    #getter for: Lcom/didi/flier/business/FlierOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/flier/business/FlierOrderLooper;->access$000(Lcom/didi/flier/business/FlierOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onRedict()V

    .line 282
    :cond_0
    return-void
.end method
