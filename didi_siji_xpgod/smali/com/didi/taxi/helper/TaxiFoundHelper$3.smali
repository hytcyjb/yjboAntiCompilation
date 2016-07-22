.class final Lcom/didi/taxi/helper/TaxiFoundHelper$3;
.super Lthread/Job;
.source "TaxiFoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiFoundHelper;->fetchImage(Ljava/lang/String;Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4

    .prologue
    .line 65
    iget-object v3, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->val$url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, localName:Ljava/lang/String;
    #calls: Lcom/didi/taxi/helper/TaxiFoundHelper;->loadImageFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/didi/taxi/helper/TaxiFoundHelper;->access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 69
    iget-object v3, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/helper/ImageFetcher;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    move-object v1, v0

    .line 74
    .local v1, fBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;

    invoke-direct {v3, p0, v1}, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;-><init>(Lcom/didi/taxi/helper/TaxiFoundHelper$3;Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 81
    #calls: Lcom/didi/taxi/helper/TaxiFoundHelper;->saveImageToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/didi/taxi/helper/TaxiFoundHelper;->access$300(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 83
    .end local v1           #fBitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
