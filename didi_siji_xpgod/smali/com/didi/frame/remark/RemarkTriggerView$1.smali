.class Lcom/didi/frame/remark/RemarkTriggerView$1;
.super Ljava/lang/Object;
.source "RemarkTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/remark/RemarkTriggerView;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/remark/RemarkTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/remark/RemarkTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/frame/remark/RemarkTriggerView$1;->this$0:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/didi/frame/remark/RemarkTriggerView$1;->this$0:Lcom/didi/frame/remark/RemarkTriggerView;

    #getter for: Lcom/didi/frame/remark/RemarkTriggerView;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/remark/RemarkTriggerView;->access$000(Lcom/didi/frame/remark/RemarkTriggerView;)Ljava/util/ArrayList;

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

    .line 50
    .local v1, listener:Landroid/view/View$OnClickListener;
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 51
    .end local v1           #listener:Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method
