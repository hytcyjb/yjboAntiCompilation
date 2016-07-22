.class Lcom/didi/beatles/common/BtsCommonListeners$2$2;
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
    .line 127
    iput-object p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$2;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 140
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    goto :goto_0
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$2;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v1, v1, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$phoneIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$2;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v0, v0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$phoneIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$2;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v0, v0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$phoneIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$2$2;->this$0:Lcom/didi/beatles/common/BtsCommonListeners$2;

    iget-object v0, v0, Lcom/didi/beatles/common/BtsCommonListeners$2;->val$phoneIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 135
    :cond_0
    return-void
.end method
