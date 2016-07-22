.class Lcom/didi/frame/wait/WaitOperator$1;
.super Ljava/lang/Object;
.source "WaitOperator.java"

# interfaces
.implements Lcom/didi/frame/switcher/SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/wait/WaitOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/wait/WaitOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator$1;->this$0:Lcom/didi/frame/wait/WaitOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 3
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator$1;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #calls: Lcom/didi/frame/wait/WaitOperator;->resetPins()V
    invoke-static {v0}, Lcom/didi/frame/wait/WaitOperator;->access$000(Lcom/didi/frame/wait/WaitOperator;)V

    .line 51
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$1$1;

    invoke-direct {v0, p0, p2}, Lcom/didi/frame/wait/WaitOperator$1$1;-><init>(Lcom/didi/frame/wait/WaitOperator$1;Lcom/didi/frame/business/Business;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
