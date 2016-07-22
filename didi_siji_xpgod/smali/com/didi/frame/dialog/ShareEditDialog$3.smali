.class Lcom/didi/frame/dialog/ShareEditDialog$3;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/dialog/ShareEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/dialog/ShareEditDialog;


# direct methods
.method constructor <init>(Lcom/didi/frame/dialog/ShareEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog$3;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$3;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->getEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const v0, 0x7f0b04fa

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$3;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$3;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$100(Lcom/didi/frame/dialog/ShareEditDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$3;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$100(Lcom/didi/frame/dialog/ShareEditDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    goto :goto_0
.end method
