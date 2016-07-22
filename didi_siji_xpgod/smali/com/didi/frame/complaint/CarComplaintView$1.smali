.class Lcom/didi/frame/complaint/CarComplaintView$1;
.super Ljava/lang/Object;
.source "CarComplaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/complaint/CarComplaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/complaint/CarComplaintView;


# direct methods
.method constructor <init>(Lcom/didi/frame/complaint/CarComplaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/didi/frame/complaint/CarComplaintView$1;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$1;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$000(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$1;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$000(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 135
    .local v0, child:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #child:Lcom/didi/frame/complaint/ComplaintReasonView;
    :cond_1
    move-object v0, p1

    .line 139
    check-cast v0, Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 140
    .restart local v0       #child:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 142
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$1;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #calls: Lcom/didi/frame/complaint/CarComplaintView;->resetInputLayout()V
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$100(Lcom/didi/frame/complaint/CarComplaintView;)V

    .line 143
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$1;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$200(Lcom/didi/frame/complaint/CarComplaintView;)Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;->onReasonCheck()V

    .line 144
    return-void
.end method
