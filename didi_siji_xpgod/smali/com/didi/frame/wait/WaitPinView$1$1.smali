.class Lcom/didi/frame/wait/WaitPinView$1$1;
.super Ljava/lang/Object;
.source "WaitPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitPinView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/wait/WaitPinView$1;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitPinView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/frame/wait/WaitPinView$1$1;->this$1:Lcom/didi/frame/wait/WaitPinView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/frame/wait/WaitPinView$1$1;->this$1:Lcom/didi/frame/wait/WaitPinView$1;

    iget-object v0, v0, Lcom/didi/frame/wait/WaitPinView$1;->this$0:Lcom/didi/frame/wait/WaitPinView;

    invoke-static {v0}, Lcom/didi/frame/wait/WaitOperator;->select(Lcom/didi/frame/wait/WaitPinView;)V

    .line 48
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->hideContentPins()V

    .line 49
    return-void
.end method
