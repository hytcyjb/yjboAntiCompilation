.class Lcom/didi/frame/MapFragment$5;
.super Lcom/didi/common/net/ResponseListener;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->updateAddressList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AddressList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/didi/frame/MapFragment$5;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 407
    new-instance v0, Lcom/didi/frame/MapFragment$5$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$5$1;-><init>(Lcom/didi/frame/MapFragment$5;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postOnceDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$5;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 420
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 421
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$102(I)I

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$102(I)I

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$5;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/AddressList;)V
    .locals 9
    .parameter "addressList"

    .prologue
    const/4 v8, 0x1

    .line 431
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->updateAddressList(Lcom/didi/common/model/AddressList;)V

    .line 432
    const-string v4, "maplistener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v4, "faban"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadstate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/didi/frame/MapFragment;->access$100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isMove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/didi/map/MapDragListener;->isMoved:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/didi/frame/MapFragment;->access$100()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    sget-boolean v4, Lcom/didi/map/MapDragListener;->isMoved:Z

    if-eqz v4, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    if-eqz v4, :cond_2

    .line 439
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v4, v4, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    sput-object v4, Lcom/didi/map/MapDragListener;->mFirstPositionUid:Ljava/lang/String;

    .line 443
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    sput-boolean v4, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 444
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v4, v4, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    const-string v5, "ps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 445
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    iget-object v6, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-virtual {v6}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/didi/map/MapController;->setMapCenter(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_3
    :goto_1
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 482
    invoke-static {v8}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 483
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setDefaultFSource(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->isFirstLoadDepartNotication()Z

    move-result v1

    .line 486
    .local v1, isFirstLoadDepartNotication:Z
    const-string v4, "maplistener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapfragment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fsource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v1, :cond_4

    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    if-eqz v4, :cond_4

    .line 488
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    iget-object v4, v4, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->showDepartFirstGuid(Ljava/lang/String;)V

    .line 490
    :cond_4
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker()V

    goto :goto_0

    .line 449
    .end local v1           #isFirstLoadDepartNotication:Z
    :cond_5
    :try_start_1
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, isMoveCF_FIRST:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 452
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/Address;

    .line 453
    .local v3, temp:Lcom/didi/common/model/Address;
    iget-object v4, v3, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    const-string v5, "cf_first"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 454
    const/4 v2, 0x1

    .line 455
    const/4 v4, 0x1

    sput-boolean v4, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 456
    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 457
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v6, v5, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 459
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v5, v3, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 460
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v5, v3, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 461
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    iget-object v5, v3, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 466
    .end local v3           #temp:Lcom/didi/common/model/Address;
    :cond_6
    if-nez v2, :cond_3

    .line 469
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 477
    .end local v0           #i:I
    .end local v2           #isMoveCF_FIRST:Z
    :catch_0
    move-exception v4

    .line 481
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 482
    invoke-static {v8}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 483
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setDefaultFSource(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->isFirstLoadDepartNotication()Z

    move-result v1

    .line 486
    .restart local v1       #isFirstLoadDepartNotication:Z
    const-string v4, "maplistener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapfragment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fsource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v1, :cond_7

    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    if-eqz v4, :cond_7

    .line 488
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    iget-object v4, v4, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/map/marker/MarkerController;->showDepartFirstGuid(Ljava/lang/String;)V

    .line 490
    :cond_7
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker()V

    goto/16 :goto_0

    .line 451
    .end local v1           #isFirstLoadDepartNotication:Z
    .restart local v0       #i:I
    .restart local v2       #isMoveCF_FIRST:Z
    .restart local v3       #temp:Lcom/didi/common/model/Address;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 474
    .end local v0           #i:I
    .end local v2           #isMoveCF_FIRST:Z
    .end local v3           #temp:Lcom/didi/common/model/Address;
    :cond_9
    :try_start_2
    iget-object v4, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 481
    :catchall_0
    move-exception v4

    iget-object v5, p1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    invoke-static {v5}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 482
    invoke-static {v8}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 483
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/frame/departure/DepartureHelper;->setDefaultFSource(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->isFirstLoadDepartNotication()Z

    move-result v1

    .line 486
    .restart local v1       #isFirstLoadDepartNotication:Z
    const-string v5, "maplistener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mapfragment:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fsource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v1, :cond_a

    iget-object v5, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    if-eqz v5, :cond_a

    .line 488
    iget-object v5, p1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    iget-object v5, v5, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/map/marker/MarkerController;->showDepartFirstGuid(Ljava/lang/String;)V

    .line 490
    :cond_a
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker()V

    .line 491
    throw v4
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$5;->onSuccess(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
