.class Lcom/didi/common/ui/webview/OldWebActivity$5$1;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity$5;->setWebViewToolData(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$1;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 406
    if-eqz p1, :cond_0

    .line 407
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 408
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$1;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    #getter for: Lcom/didi/common/ui/webview/OldWebActivity;->mCommonWebView:Lcom/didi/common/ui/webview/OldCommonWebViewEx;
    invoke-static {v0}, Lcom/didi/common/ui/webview/OldWebActivity;->access$1200(Lcom/didi/common/ui/webview/OldWebActivity;)Lcom/didi/common/ui/webview/OldCommonWebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/OldCommonWebViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4040

    div-float v8, v0, v2

    .line 409
    .local v8, scale:F
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 411
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 412
    .local v4, height:I
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 414
    .local v7, resizeBmp:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$1;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    iget-object v0, v0, Lcom/didi/common/ui/webview/OldWebActivity;->imgMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #resizeBmp:Landroid/graphics/Bitmap;
    .end local v8           #scale:F
    :cond_0
    return-void
.end method
