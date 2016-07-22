.class Lcom/didi/frame/push/PushContextWraper$1;
.super Ljava/lang/Object;
.source "PushContextWraper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/push/PushContextWraper;->startLoopInThread()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/push/PushContextWraper;


# direct methods
.method constructor <init>(Lcom/didi/frame/push/PushContextWraper;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    .local p0, this:Lcom/didi/frame/push/PushContextWraper$1;,"Lcom/didi/frame/push/PushContextWraper.1;"
    iput-object p1, p0, Lcom/didi/frame/push/PushContextWraper$1;->this$0:Lcom/didi/frame/push/PushContextWraper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 552
    .local p0, this:Lcom/didi/frame/push/PushContextWraper$1;,"Lcom/didi/frame/push/PushContextWraper.1;"
    iget-object v1, p0, Lcom/didi/frame/push/PushContextWraper$1;->this$0:Lcom/didi/frame/push/PushContextWraper;

    iget-object v1, v1, Lcom/didi/frame/push/PushContextWraper;->mPushContext:Lcom/didi/frame/push/IPushContext;

    invoke-interface {v1}, Lcom/didi/frame/push/IPushContext;->startLoop()I

    move-result v0

    .line 554
    .local v0, res:I
    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/didi/frame/push/PushContextWraper$1;->this$0:Lcom/didi/frame/push/PushContextWraper;

    invoke-virtual {v1, v0}, Lcom/didi/frame/push/PushContextWraper;->onStartLoopFailed(I)V

    .line 557
    :cond_0
    return-void
.end method
