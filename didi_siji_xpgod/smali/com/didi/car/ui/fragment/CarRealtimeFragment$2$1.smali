.class Lcom/didi/car/ui/fragment/CarRealtimeFragment$2$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;->onMapStable()Z
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
.field final synthetic this$1:Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2$1;->this$1:Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarDriverList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2$1;->this$1:Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;

    iget-object v0, v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->access$100(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarDriverMarkerList()V

    .line 131
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setCarDriverMarkerList(Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p1, Lcom/didi/car/model/CarDriverList;->arriveTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    check-cast p1, Lcom/didi/car/model/CarDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2$1;->onSuccess(Lcom/didi/car/model/CarDriverList;)V

    return-void
.end method
