.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->onMapStable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$1:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;->this$1:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 1
    .parameter "flierDrivers"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;->this$1:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;

    iget-object v0, v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeFlierDriverMarkerList()V

    .line 127
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setFlierDriverMarkerList(Ljava/util/ArrayList;)V

    .line 128
    iget-object v0, p1, Lcom/didi/car/model/CarDriverList;->arriveTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
