.class Lcom/didi/map/MapDragListener$2;
.super Lcom/didi/common/net/ResponseListener;
.source "MapDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapDragListener;->getSubHotPoi()V
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
.field final synthetic this$0:Lcom/didi/map/MapDragListener;

.field final synthetic val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/didi/map/MapDragListener;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/didi/map/MapDragListener$2;->this$0:Lcom/didi/map/MapDragListener;

    iput-object p2, p0, Lcom/didi/map/MapDragListener$2;->val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 187
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/didi/map/MapDragListener;->access$000()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/didi/common/model/AddressList;->currentTimeMills:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 188
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 189
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/map/MapDragListener$2;->val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 190
    const-string v1, "\u5f53\u524d\u4f4d\u7f6e"

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 192
    const-string v1, ""

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/didi/map/MapDragListener$2;->this$0:Lcom/didi/map/MapDragListener;

    #calls: Lcom/didi/map/MapDragListener;->showDepartureInfoWindow(Lcom/didi/common/model/Address;)V
    invoke-static {v1, v0}, Lcom/didi/map/MapDragListener;->access$100(Lcom/didi/map/MapDragListener;Lcom/didi/common/model/Address;)V

    .line 195
    .end local v0           #address:Lcom/didi/common/model/Address;
    :cond_0
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/map/MapDragListener$2;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 5
    .parameter "t"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 173
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/didi/map/MapDragListener;->access$000()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/didi/common/model/AddressList;->currentTimeMills:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 174
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 175
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/map/MapDragListener$2;->val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 176
    const-string v1, "chongxin"

    iput-object v1, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 177
    const-string v1, "\u5f53\u524d\u4f4d\u7f6e"

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 179
    const-string v1, ""

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/didi/map/MapDragListener$2;->this$0:Lcom/didi/map/MapDragListener;

    #calls: Lcom/didi/map/MapDragListener;->showDepartureInfoWindow(Lcom/didi/common/model/Address;)V
    invoke-static {v1, v0}, Lcom/didi/map/MapDragListener;->access$100(Lcom/didi/map/MapDragListener;Lcom/didi/common/model/Address;)V

    .line 182
    .end local v0           #address:Lcom/didi/common/model/Address;
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/map/MapDragListener$2;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/AddressList;)V
    .locals 4
    .parameter "addressList"

    .prologue
    .line 198
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->updateAddressList(Lcom/didi/common/model/AddressList;)V

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/didi/map/MapDragListener;->access$000()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/didi/common/model/AddressList;->currentTimeMills:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/map/MapDragListener;->access$000()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  addd time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/didi/common/model/AddressList;->currentTimeMills:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-boolean v0, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    if-nez v0, :cond_1

    .line 209
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/didi/map/MapDragListener;->clearAll()V

    .line 211
    iget-object v0, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/map/MapDragListener;->addAll(Ljava/util/ArrayList;)V

    .line 214
    :cond_3
    sget-object v0, Lcom/didi/map/MapDragListener;->mFirstPositionUid:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    sput-object v0, Lcom/didi/map/MapDragListener;->mFirstPositionUid:Ljava/lang/String;

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/map/MapDragListener$2;->val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/map/MapDragListener$2;->val$mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    const-string v1, "rengong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    const-string v1, "chongxin"

    iput-object v1, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 224
    :cond_5
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    sget-object v1, Lcom/didi/map/MapDragListener;->mFirstPositionUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 226
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    const-string v1, "cf_first_other"

    iput-object v1, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/didi/map/MapDragListener$2;->this$0:Lcom/didi/map/MapDragListener;

    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v1

    #calls: Lcom/didi/map/MapDragListener;->showDepartureInfoWindow(Lcom/didi/common/model/Address;)V
    invoke-static {v0, v1}, Lcom/didi/map/MapDragListener;->access$100(Lcom/didi/map/MapDragListener;Lcom/didi/common/model/Address;)V

    .line 231
    iget-object v0, p1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    iget-boolean v0, v0, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->isOut:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/didi/map/MapDragListener$2;->this$0:Lcom/didi/map/MapDragListener;

    iget-object v1, p1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    iget-object v1, v1, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->title:Ljava/lang/String;

    #calls: Lcom/didi/map/MapDragListener;->showConfirmDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/map/MapDragListener;->access$200(Lcom/didi/map/MapDragListener;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/map/MapDragListener$2;->onSuccess(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
