.class final Lcom/didi/common/helper/AdvertisementHelper$3;
.super Lthread/Job;
.source "AdvertisementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/AdvertisementHelper;->save(Lcom/didi/common/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Lcom/didi/common/model/Advertisement;


# direct methods
.method constructor <init>(Lcom/didi/common/model/Advertisement;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/common/helper/AdvertisementHelper$3;->val$ad:Lcom/didi/common/model/Advertisement;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/didi/common/helper/AdvertisementHelper$3;->val$ad:Lcom/didi/common/model/Advertisement;

    invoke-virtual {v0}, Lcom/didi/common/model/Advertisement;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$3;->val$ad:Lcom/didi/common/model/Advertisement;

    invoke-virtual {v1}, Lcom/didi/common/model/Advertisement;->getMd5()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/common/helper/AdvertisementHelper;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/common/helper/AdvertisementHelper;->access$500(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 142
    return-void
.end method
