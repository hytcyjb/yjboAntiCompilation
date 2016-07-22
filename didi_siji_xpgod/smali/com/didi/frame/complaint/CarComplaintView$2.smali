.class Lcom/didi/frame/complaint/CarComplaintView$2;
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
    .line 147
    iput-object p1, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$000(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->reasons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$000(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 154
    .local v0, child:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0           #child:Lcom/didi/frame/complaint/ComplaintReasonView;
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$300(Lcom/didi/frame/complaint/CarComplaintView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    const/4 v3, 0x1

    #setter for: Lcom/didi/frame/complaint/CarComplaintView;->isOtherCheck:Z
    invoke-static {v2, v3}, Lcom/didi/frame/complaint/CarComplaintView;->access$302(Lcom/didi/frame/complaint/CarComplaintView;Z)Z

    .line 160
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-virtual {v2}, Lcom/didi/frame/complaint/CarComplaintView;->showInputMethod()V

    .line 161
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->otherLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$400(Lcom/didi/frame/complaint/CarComplaintView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/didi/frame/complaint/CarComplaintView$2;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;
    invoke-static {v2}, Lcom/didi/frame/complaint/CarComplaintView;->access$200(Lcom/didi/frame/complaint/CarComplaintView;)Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;->onReasonCheck()V

    .line 164
    return-void
.end method
