.class Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "DDriveCostDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    iget-object v0, v0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 106
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    #calls: Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->doDissentSubmit()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V

    .line 101
    return-void
.end method
