.class Lcom/didi/car/ui/component/CarFirstTipDialog$1;
.super Ljava/lang/Object;
.source "CarFirstTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarFirstTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarFirstTipDialog;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarFirstTipDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog$1;->this$0:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog$1;->this$0:Lcom/didi/car/ui/component/CarFirstTipDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->dismiss()V

    .line 233
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog$1;->this$0:Lcom/didi/car/ui/component/CarFirstTipDialog;

    #getter for: Lcom/didi/car/ui/component/CarFirstTipDialog;->listener:Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->access$000(Lcom/didi/car/ui/component/CarFirstTipDialog;)Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080226

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog$1;->this$0:Lcom/didi/car/ui/component/CarFirstTipDialog;

    #getter for: Lcom/didi/car/ui/component/CarFirstTipDialog;->listener:Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->access$000(Lcom/didi/car/ui/component/CarFirstTipDialog;)Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;->submitOnly()V

    goto :goto_0
.end method
