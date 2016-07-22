.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->onMapStable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 202
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;->onSuccess(Lcom/didi/taxi/model/TaxiDriverList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiDriverList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 210
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setTaxiDriverMarkerList(Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->setTaxiDrivers(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
