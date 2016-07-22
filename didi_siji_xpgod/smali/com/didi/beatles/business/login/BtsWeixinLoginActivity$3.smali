.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;
.super Ljava/lang/Object;
.source "BtsWeixinLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 238
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 240
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 242
    const-string v0, "0"

    new-instance v1, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->getRandNickName(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 255
    :cond_0
    return-void
.end method
