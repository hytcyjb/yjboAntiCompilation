.class Lcom/didi/frame/dialog/ShareEditDialog$1;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Lcom/didi/common/cache/ImageWorker$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/dialog/ShareEditDialog;->setDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 74
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog$1;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "bitmapDrawable"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$1;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->imgLogo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$000(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog$1;->this$0:Lcom/didi/frame/dialog/ShareEditDialog;

    #getter for: Lcom/didi/frame/dialog/ShareEditDialog;->imgLogo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/frame/dialog/ShareEditDialog;->access$000(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    return-void
.end method
