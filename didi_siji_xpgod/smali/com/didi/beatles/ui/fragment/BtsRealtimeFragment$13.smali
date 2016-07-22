.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRoleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 720
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;->onFinish(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 733
    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->isAvalible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    if-eqz p1, :cond_0

    .line 737
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    iget-object v0, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->head_img_url:Ljava/lang/String;

    .line 738
    .local v0, url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isRemoveBtsMapUserMarker()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->setBtsMapUserMarker(DD)V

    .line 743
    :goto_1
    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateBtsMapUserMarkerPhoto(Ljava/lang/String;)V

    .line 744
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 745
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V

    goto :goto_0

    .line 741
    :cond_2
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateBtsMapUserMarker()V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 720
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;->onSuccess(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/role/BtsRoleInfo;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 723
    if-nez p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-static {p1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->setInstance(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    goto :goto_0
.end method
