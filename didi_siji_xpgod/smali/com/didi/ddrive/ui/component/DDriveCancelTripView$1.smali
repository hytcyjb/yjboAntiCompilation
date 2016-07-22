.class Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;
.super Ljava/lang/Object;
.source "DDriveCancelTripView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, -0x1

    .line 92
    const-string v0, "morning"

    const-string v1, "otherView.getEditText().setOnClickListener"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check()V

    .line 95
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #setter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0, v2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$002(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$200(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->disableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$300(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_0
.end method
