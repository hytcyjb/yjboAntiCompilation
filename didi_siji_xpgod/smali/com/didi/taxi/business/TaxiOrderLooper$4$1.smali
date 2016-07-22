.class Lcom/didi/taxi/business/TaxiOrderLooper$4$1;
.super Ljava/lang/Object;
.source "TaxiOrderLooper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/business/TaxiOrderLooper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/business/TaxiOrderLooper$4;


# direct methods
.method constructor <init>(Lcom/didi/taxi/business/TaxiOrderLooper$4;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$4$1;->this$1:Lcom/didi/taxi/business/TaxiOrderLooper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$4$1;->this$1:Lcom/didi/taxi/business/TaxiOrderLooper$4;

    iget-object v0, v0, Lcom/didi/taxi/business/TaxiOrderLooper$4;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/didi/taxi/business/TaxiOrderLooper$4$1;->this$1:Lcom/didi/taxi/business/TaxiOrderLooper$4;

    iget-object v0, v0, Lcom/didi/taxi/business/TaxiOrderLooper$4;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    #getter for: Lcom/didi/taxi/business/TaxiOrderLooper;->listener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    invoke-static {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->access$000(Lcom/didi/taxi/business/TaxiOrderLooper;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;->onRedict()V

    .line 422
    :cond_0
    return-void
.end method
