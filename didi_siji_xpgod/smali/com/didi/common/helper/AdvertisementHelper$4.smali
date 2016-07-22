.class final Lcom/didi/common/helper/AdvertisementHelper$4;
.super Lthread/Job;
.source "AdvertisementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/AdvertisementHelper;->saveAsHistory(Lcom/didi/common/model/AdvertisementList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Lcom/didi/common/model/AdvertisementList;


# direct methods
.method constructor <init>(Lcom/didi/common/model/AdvertisementList;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/didi/common/helper/AdvertisementHelper$4;->val$list:Lcom/didi/common/model/AdvertisementList;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 196
    #calls: Lcom/didi/common/helper/AdvertisementHelper;->getAdvertisementFile()Ljava/io/File;
    invoke-static {}, Lcom/didi/common/helper/AdvertisementHelper;->access$600()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, file:Ljava/io/File;
    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$4;->val$list:Lcom/didi/common/model/AdvertisementList;

    invoke-static {v0, v1}, Lcom/didi/common/util/FileUtil;->save(Ljava/io/File;Ljava/lang/Object;)V

    .line 198
    return-void
.end method
