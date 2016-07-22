.class Lcom/didi/frame/wait/WaitTriggerView$2;
.super Ljava/lang/Object;
.source "WaitTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitTriggerView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/wait/WaitTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/frame/wait/WaitTriggerView$2;->this$0:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/didi/frame/wait/WaitTriggerView$2;->this$0:Lcom/didi/frame/wait/WaitTriggerView;

    #getter for: Lcom/didi/frame/wait/WaitTriggerView;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/wait/WaitTriggerView;->access$100(Lcom/didi/frame/wait/WaitTriggerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 69
    .local v1, listener:Landroid/view/View$OnClickListener;
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 70
    .end local v1           #listener:Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method
