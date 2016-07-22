.class Lcom/didi/common/ui/component/CommonDialog$3;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/CommonDialog;->updatePinkIconShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/CommonDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/CommonDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #setter for: Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1}, Lcom/didi/common/ui/component/CommonDialog;->access$102(Lcom/didi/common/ui/component/CommonDialog;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$200(Lcom/didi/common/ui/component/CommonDialog;)Lx/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$200(Lcom/didi/common/ui/component/CommonDialog;)Lx/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/component/CommonDialog;->access$200(Lcom/didi/common/ui/component/CommonDialog;)Lx/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog$3;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    #getter for: Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lcom/didi/common/ui/component/CommonDialog;->access$100(Lcom/didi/common/ui/component/CommonDialog;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    :cond_0
    return-void
.end method
