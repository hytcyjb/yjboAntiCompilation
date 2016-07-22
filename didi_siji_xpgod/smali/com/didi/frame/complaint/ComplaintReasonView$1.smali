.class Lcom/didi/frame/complaint/ComplaintReasonView$1;
.super Ljava/lang/Object;
.source "ComplaintReasonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/complaint/ComplaintReasonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/complaint/ComplaintReasonView;


# direct methods
.method constructor <init>(Lcom/didi/frame/complaint/ComplaintReasonView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/frame/complaint/ComplaintReasonView$1;->this$0:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView$1;->this$0:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 82
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView$1;->this$0:Lcom/didi/frame/complaint/ComplaintReasonView;

    #getter for: Lcom/didi/frame/complaint/ComplaintReasonView;->listener:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->access$000(Lcom/didi/frame/complaint/ComplaintReasonView;)Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;->onSelect()V

    .line 83
    return-void
.end method
