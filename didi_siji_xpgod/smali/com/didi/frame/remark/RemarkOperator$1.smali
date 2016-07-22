.class Lcom/didi/frame/remark/RemarkOperator$1;
.super Ljava/lang/Object;
.source "RemarkOperator.java"

# interfaces
.implements Lcom/didi/frame/remark/RemarkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/remark/RemarkOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/remark/RemarkOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/remark/RemarkOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/frame/remark/RemarkOperator$1;->this$0:Lcom/didi/frame/remark/RemarkOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemarkChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "lastRemark"
    .parameter "newRemark"

    .prologue
    .line 34
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator$1;->this$0:Lcom/didi/frame/remark/RemarkOperator;

    #getter for: Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;
    invoke-static {v0}, Lcom/didi/frame/remark/RemarkOperator;->access$000(Lcom/didi/frame/remark/RemarkOperator;)Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setUnSelected()V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator$1;->this$0:Lcom/didi/frame/remark/RemarkOperator;

    #getter for: Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;
    invoke-static {v0}, Lcom/didi/frame/remark/RemarkOperator;->access$000(Lcom/didi/frame/remark/RemarkOperator;)Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setSelected()V

    goto :goto_0
.end method
