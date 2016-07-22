.class Lcom/didi/beatles/common/BtsCommonListeners$2$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsCommonListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/BtsCommonListeners$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;


# direct methods
.method constructor <init>(Lcom/didi/beatles/common/BtsCommonListeners$2;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$1;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 113
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$1;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v0, v0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$1;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v1, v1, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$oid:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$1;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget v2, v2, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startH5PassangerCancelOrderForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 106
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    goto :goto_0
.end method
