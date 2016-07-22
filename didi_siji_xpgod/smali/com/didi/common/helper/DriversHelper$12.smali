.class final Lcom/didi/common/helper/DriversHelper$12;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getTaxiDriversData(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiDriverList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$12;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lat:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 626
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$12;->onError(Lcom/didi/taxi/model/TaxiDriverList;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiDriverList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lng:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$12;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->access$1400(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    .line 657
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 626
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$12;->onFail(Lcom/didi/taxi/model/TaxiDriverList;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiDriverList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lat:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$12;->val$lng:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$12;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    #calls: Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->access$1400(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    .line 652
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 626
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$12;->onSuccess(Lcom/didi/taxi/model/TaxiDriverList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiDriverList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$12;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$12;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    invoke-interface {v0}, Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;->isDestoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 634
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 635
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$1300()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$1300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 636
    :cond_1
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    goto :goto_0

    .line 639
    :cond_2
    new-instance v0, Lcom/didi/common/helper/DriversHelper$12$1;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DriversHelper$12$1;-><init>(Lcom/didi/common/helper/DriversHelper$12;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$12$1;->start()Lthread/Job;

    goto :goto_0
.end method
