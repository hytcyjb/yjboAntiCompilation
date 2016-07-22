.class final Lcom/didi/common/helper/DriversHelper$11;
.super Ljava/lang/Object;
.source "DriversHelper.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getDDriveDriversData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/DriveAroundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$11;->val$lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$11;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$1102(Z)Z

    .line 611
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveAroundResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 585
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$1102(Z)Z

    .line 586
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 587
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriveAroundResponse;->drivers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$1202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 588
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 589
    :cond_0
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 590
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$11;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$11;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 600
    :goto_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 605
    :goto_1
    return-void

    .line 592
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DriversHelper$11$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DriversHelper$11$1;-><init>(Lcom/didi/common/helper/DriversHelper$11;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$11$1;->start()Lthread/Job;

    goto :goto_0

    .line 603
    :cond_2
    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 582
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriveAroundResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$11;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveAroundResponse;)V

    return-void
.end method
