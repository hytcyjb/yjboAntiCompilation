.class final Lcom/didi/common/helper/AdvertisementHelper$1;
.super Lcom/didi/common/net/ResponseListener;
.source "AdvertisementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/AdvertisementHelper;->getAdvertisementList(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AdvertisementList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/common/helper/AdvertisementHelper$1;->val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/common/model/AdvertisementList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/didi/common/model/AdvertisementList;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/AdvertisementList;->hasUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    #calls: Lcom/didi/common/helper/AdvertisementHelper;->loadHistoryAdvertisementList()Lcom/didi/common/model/AdvertisementList;
    invoke-static {}, Lcom/didi/common/helper/AdvertisementHelper;->access$000()Lcom/didi/common/model/AdvertisementList;

    move-result-object p1

    .line 54
    :goto_0
    #calls: Lcom/didi/common/helper/AdvertisementHelper;->chooseAvailableAd(Lcom/didi/common/model/AdvertisementList;)Lcom/didi/common/model/Advertisement;
    invoke-static {p1}, Lcom/didi/common/helper/AdvertisementHelper;->access$200(Lcom/didi/common/model/AdvertisementList;)Lcom/didi/common/model/Advertisement;

    move-result-object v0

    .line 55
    .local v0, ad:Lcom/didi/common/model/Advertisement;
    iget-object v1, p0, Lcom/didi/common/helper/AdvertisementHelper$1;->val$l:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    #calls: Lcom/didi/common/helper/AdvertisementHelper;->loadAdvertisementImage(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    invoke-static {v0, v1}, Lcom/didi/common/helper/AdvertisementHelper;->access$300(Lcom/didi/common/model/Advertisement;Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V

    .line 56
    return-void

    .line 51
    .end local v0           #ad:Lcom/didi/common/model/Advertisement;
    :cond_1
    #calls: Lcom/didi/common/helper/AdvertisementHelper;->saveAsHistory(Lcom/didi/common/model/AdvertisementList;)V
    invoke-static {p1}, Lcom/didi/common/helper/AdvertisementHelper;->access$100(Lcom/didi/common/model/AdvertisementList;)V

    .line 52
    invoke-virtual {p1}, Lcom/didi/common/model/AdvertisementList;->getIconList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/IconHelper;->saveIcons(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/didi/common/model/AdvertisementList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/AdvertisementHelper$1;->onSuccess(Lcom/didi/common/model/AdvertisementList;)V

    return-void
.end method
