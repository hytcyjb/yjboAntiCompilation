.class final Lcom/didi/common/helper/DriversHelper$15;
.super Lcom/didi/common/net/ResponseListener;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->getAsyncDrivers(Ljava/lang/String;DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarDriverList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 2
    .parameter "driverList"

    .prologue
    .line 907
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 908
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 909
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    .line 910
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showViewByDrivers()V

    .line 912
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 903
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/DriversHelper$15;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
