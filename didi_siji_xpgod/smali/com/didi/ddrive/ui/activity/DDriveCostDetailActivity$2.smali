.class Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$2;
.super Lcom/didi/common/net/ResponseListener;
.source "DDriveCostDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->doDissentSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 117
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 118
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    iget-object v0, v0, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 120
    const v0, 0x7f0b02d1

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(I)V

    .line 122
    :cond_0
    return-void
.end method
