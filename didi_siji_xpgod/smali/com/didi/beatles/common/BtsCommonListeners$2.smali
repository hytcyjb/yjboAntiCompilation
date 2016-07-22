.class final Lcom/didi/beatles/common/BtsCommonListeners$2;
.super Ljava/lang/Object;
.source "BtsCommonListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/BtsCommonListeners;->getCancelOrderListener(Landroid/app/Activity;Ljava/lang/String;IILandroid/view/View;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$oid:Ljava/lang/String;

.field final synthetic val$phoneIcon:Landroid/view/View;

.field final synthetic val$requestCode:I

.field final synthetic val$role:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$role:I

    iput-object p2, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$oid:Ljava/lang/String;

    iput p4, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$requestCode:I

    iput-object p5, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$phoneIcon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0b00c1

    .line 86
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$role:I

    if-nez v1, :cond_3

    .line 89
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v0, v1, Lcom/didi/beatles/model/BtsConfig;->terminateStr:Ljava/lang/String;

    .line 90
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const-string v0, "\u8f66\u4e3b\u5e73\u5747\u63a5\u5355\u65f6\u95f4\u4e3a20\u5206\u949f\uff0c\u518d\u591a\u7b49\u4e00\u4f1a\u5427\uff01"

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b00c4

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/didi/beatles/common/BtsCommonListeners$2$1;

    invoke-direct {v4, p0}, Lcom/didi/beatles/common/BtsCommonListeners$2$1;-><init>(Lcom/didi/beatles/common/BtsCommonListeners$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0

    .line 122
    .end local v0           #content:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$role:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0b0035

    const v3, 0x7f0b0037

    new-instance v4, Lcom/didi/beatles/common/BtsCommonListeners$2$2;

    invoke-direct {v4, p0}, Lcom/didi/beatles/common/BtsCommonListeners$2$2;-><init>(Lcom/didi/beatles/common/BtsCommonListeners$2;)V

    invoke-static {v1, v2, v3, v5, v4}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;IIILcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0
.end method
