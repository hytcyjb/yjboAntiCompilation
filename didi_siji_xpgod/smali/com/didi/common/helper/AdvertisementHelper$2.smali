.class final Lcom/didi/common/helper/AdvertisementHelper$2;
.super Lthread/Job;
.source "AdvertisementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/AdvertisementHelper;->loadAdvertisementImage(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$ad:Lcom/didi/common/model/Advertisement;

.field final synthetic val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;


# direct methods
.method constructor <init>(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$ad:Lcom/didi/common/model/Advertisement;

    iput-object p2, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;->onLoad(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected run()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$ad:Lcom/didi/common/model/Advertisement;

    invoke-static {v1}, Lcom/didi/common/helper/AdvertisementHelper;->loadAdvertisementImage(Lcom/didi/common/model/Advertisement;)Z

    move-result v0

    .line 116
    .local v0, loadFromNet:Z
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$ad:Lcom/didi/common/model/Advertisement;

    #calls: Lcom/didi/common/helper/AdvertisementHelper;->save(Lcom/didi/common/model/Advertisement;)V
    invoke-static {v1}, Lcom/didi/common/helper/AdvertisementHelper;->access$400(Lcom/didi/common/model/Advertisement;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->val$ad:Lcom/didi/common/model/Advertisement;

    invoke-virtual {v1}, Lcom/didi/common/model/Advertisement;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$2;->bitmap:Landroid/graphics/Bitmap;

    .line 119
    return-void
.end method
