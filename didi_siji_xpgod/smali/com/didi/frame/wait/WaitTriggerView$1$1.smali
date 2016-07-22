.class Lcom/didi/frame/wait/WaitTriggerView$1$1;
.super Ljava/lang/Object;
.source "WaitTriggerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitTriggerView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/wait/WaitTriggerView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitTriggerView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/frame/wait/WaitTriggerView$1$1;->this$1:Lcom/didi/frame/wait/WaitTriggerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->showContentPins()V

    .line 60
    return-void
.end method
