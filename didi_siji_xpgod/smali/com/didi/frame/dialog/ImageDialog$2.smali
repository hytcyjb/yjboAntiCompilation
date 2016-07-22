.class Lcom/didi/frame/dialog/ImageDialog$2;
.super Ljava/lang/Object;
.source "ImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/dialog/ImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/dialog/ImageDialog;


# direct methods
.method constructor <init>(Lcom/didi/frame/dialog/ImageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/didi/frame/dialog/ImageDialog$2;->this$0:Lcom/didi/frame/dialog/ImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog$2;->this$0:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ImageDialog;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog$2;->this$0:Lcom/didi/frame/dialog/ImageDialog;

    #getter for: Lcom/didi/frame/dialog/ImageDialog;->listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ImageDialog;->access$000(Lcom/didi/frame/dialog/ImageDialog;)Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog$2;->this$0:Lcom/didi/frame/dialog/ImageDialog;

    #getter for: Lcom/didi/frame/dialog/ImageDialog;->listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    invoke-static {v0}, Lcom/didi/frame/dialog/ImageDialog;->access$000(Lcom/didi/frame/dialog/ImageDialog;)Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;->onCancel()V

    .line 218
    :cond_0
    return-void
.end method
