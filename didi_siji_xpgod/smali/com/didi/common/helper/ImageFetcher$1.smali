.class final Lcom/didi/common/helper/ImageFetcher$1;
.super Lthread/Job;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/ImageFetcher$1;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    iget-object v1, p0, Lcom/didi/common/helper/ImageFetcher$1;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/ImageFetcher$1;->val$callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    #calls: Lcom/didi/common/helper/ImageFetcher;->download(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->access$000(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/ImageFetcher$1;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method
