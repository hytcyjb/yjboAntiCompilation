.class final Lcom/didi/beatles/map/BtsDriversHelper$2;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsDriversHelper;->getBtsAroundDrivers(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsUserAround;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lat:D

    iput-wide p3, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lng:D

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/didi/beatles/model/BtsUserAround;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/map/BtsDriversHelper$2;->onError(Lcom/didi/beatles/model/BtsUserAround;)V

    return-void
.end method

.method public onError(Lcom/didi/beatles/model/BtsUserAround;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lat:D

    iget-wide v2, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lng:D

    #calls: Lcom/didi/beatles/map/BtsDriversHelper;->onGetDriversFail(Lcom/didi/beatles/model/BtsUserAround;DD)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/didi/beatles/map/BtsDriversHelper;->access$600(Lcom/didi/beatles/model/BtsUserAround;DD)V

    .line 130
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/didi/beatles/model/BtsUserAround;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/map/BtsDriversHelper$2;->onFail(Lcom/didi/beatles/model/BtsUserAround;)V

    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/BtsUserAround;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lat:D

    iget-wide v2, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lng:D

    #calls: Lcom/didi/beatles/map/BtsDriversHelper;->onGetDriversFail(Lcom/didi/beatles/model/BtsUserAround;DD)V
    invoke-static {p1, v0, v1, v2, v3}, Lcom/didi/beatles/map/BtsDriversHelper;->access$600(Lcom/didi/beatles/model/BtsUserAround;DD)V

    .line 125
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/didi/beatles/model/BtsUserAround;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/map/BtsDriversHelper$2;->onSuccess(Lcom/didi/beatles/model/BtsUserAround;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/BtsUserAround;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/beatles/map/BtsDriversHelper;->access$402(I)I

    .line 110
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 111
    iget-object v0, p1, Lcom/didi/beatles/model/BtsUserAround;->drivers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/beatles/map/BtsDriversHelper;->access$502(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 112
    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 113
    :cond_2
    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->isAvalible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-wide v0, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lat:D

    iget-wide v2, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btsUserMarkers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->access$500()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 118
    iget-wide v0, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lat:D

    iget-wide v2, p0, Lcom/didi/beatles/map/BtsDriversHelper$2;->val$lng:D

    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->access$500()Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/didi/beatles/map/BtsDriversHelper;->showOnMap(DDLjava/util/ArrayList;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/beatles/map/BtsDriversHelper;->access$200(DDLjava/util/ArrayList;)V

    goto :goto_0
.end method
