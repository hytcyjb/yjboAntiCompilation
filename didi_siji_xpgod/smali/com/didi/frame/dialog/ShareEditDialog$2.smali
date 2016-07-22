.class Lcom/didi/frame/dialog/ShareEditDialog$2;
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
    .line 99
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog$2;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$2;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->dismiss()V

    .line 104
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$2;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$100(Lcom/didi/frame/dialog/ShareEditDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$2;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$100(Lcom/didi/frame/dialog/ShareEditDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 106
    :cond_0
    return-void
.end method
