.class public Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;
.super Ljava/lang/Object;
.source "DriverRuningInfoWindowAdapter.java"

# interfaces
.implements Lcom/didi/map/marker/adapter/CarBaseInfoWindowAdapter;


# instance fields
.field private carRealtimeCount:Lcom/didi/common/model/BaseObject;

.field private mPress:Landroid/view/View;

.field private mWindow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f0300be

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    .line 33
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    .line 34
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mPress:Landroid/view/View;

    .line 35
    return-void
.end method

.method private fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V
    .locals 13
    .parameter "feeItem1"
    .parameter "feeItem2"
    .parameter "totalFee"
    .parameter "view"

    .prologue
    .line 95
    const v11, 0x7f08041f

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 96
    .local v8, realTimeLayout:Landroid/widget/RelativeLayout;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    const v11, 0x7f080424

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 98
    .local v9, realTimeMoneyLayout:Landroid/widget/RelativeLayout;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    const v11, 0x7f08041e

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/didi/common/richtextview/RichTextView;

    .line 100
    .local v10, richTextView:Lcom/didi/common/richtextview/RichTextView;
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 102
    const v11, 0x7f080421

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/didi/common/richtextview/RichTextView;

    .line 103
    .local v5, milaege:Landroid/widget/TextView;
    const v11, 0x7f080422

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/didi/common/richtextview/RichTextView;

    .line 104
    .local v6, minutes:Landroid/widget/TextView;
    const v11, 0x7f080425

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 105
    .local v7, money:Landroid/widget/TextView;
    const v11, 0x7f080427

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, decimal:Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 108
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, m:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 116
    const-string v11, "."

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 117
    const/4 v11, 0x0

    const-string v12, "."

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, intm:Ljava/lang/String;
    const-string v11, "."

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, dec:Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v1           #dec:Ljava/lang/String;
    .end local v3           #intm:Ljava/lang/String;
    :goto_1
    return-void

    .line 110
    .end local v4           #m:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    .restart local v4       #m:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string v11, "00"

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :cond_2
    const-string v11, "0"

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const-string v11, "00"

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getInfoContents(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->setInfo(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    iget-object v0, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .parameter "marker"

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    const v3, 0x7f08041f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 141
    .local v0, realTimeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    .end local v0           #realTimeLayout:Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mPress:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mPress:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->setInfo(Landroid/view/View;)V

    .line 149
    iget-object v1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mPress:Landroid/view/View;

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    iget-object v1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mPress:Landroid/view/View;

    goto :goto_0
.end method

.method public setInfo(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 154
    iget-object v6, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    if-nez v6, :cond_0

    .line 183
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v6, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    instance-of v6, v6, Lcom/didi/car/model/CarOrderNewRealtimeCount;

    if-eqz v6, :cond_3

    .line 156
    iget-object v5, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    check-cast v5, Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 157
    .local v5, realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    iget-object v4, v5, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    .line 158
    .local v4, feeItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarFeeItemInfo;>;"
    const-string v2, ""

    .line 159
    .local v2, feeItem1:Ljava/lang/String;
    const-string v3, ""

    .line 161
    .local v3, feeItem2:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 163
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarFeeItemInfo;

    .line 164
    .local v0, feeInfoItem1:Lcom/didi/car/model/CarFeeItemInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .end local v0           #feeInfoItem1:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 168
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarFeeItemInfo;

    .line 169
    .local v1, feeInfoItem2:Lcom/didi/car/model/CarFeeItemInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .end local v1           #feeInfoItem2:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_2
    iget v6, v5, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    goto :goto_0

    .line 174
    .end local v2           #feeItem1:Ljava/lang/String;
    .end local v3           #feeItem2:Ljava/lang/String;
    .end local v4           #feeItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarFeeItemInfo;>;"
    .end local v5           #realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    :cond_3
    iget-object v5, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    check-cast v5, Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 175
    .local v5, realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    const v6, 0x7f0b03f1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2       #feeItem1:Ljava/lang/String;
    const v6, 0x7f0b03f2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .restart local v3       #feeItem2:Ljava/lang/String;
    iget-boolean v6, v5, Lcom/didi/car/model/CarOrderRealtimeCount;->isInit:Z

    if-eqz v6, :cond_4

    .line 178
    const v6, 0x7f0b03f0

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, ""

    .line 181
    :cond_4
    iget v6, v5, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    invoke-direct {p0, v2, v3, v6, p1}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 8
    .parameter "valuating"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 60
    iput-object p1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    .line 62
    iget-object v4, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    .line 63
    .local v4, feeItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarFeeItemInfo;>;"
    const-string v2, ""

    .line 64
    .local v2, feeItem1:Ljava/lang/String;
    const-string v3, ""

    .line 66
    .local v3, feeItem2:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 68
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarFeeItemInfo;

    .line 69
    .local v0, feeInfoItem1:Lcom/didi/car/model/CarFeeItemInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .end local v0           #feeInfoItem1:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_1

    .line 73
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarFeeItemInfo;

    .line 74
    .local v1, feeInfoItem2:Lcom/didi/car/model/CarFeeItemInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .end local v1           #feeInfoItem2:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    iget v5, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    iget-object v6, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 78
    return-void
.end method

.method public updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 5
    .parameter "valuating"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->carRealtimeCount:Lcom/didi/common/model/BaseObject;

    .line 85
    const v2, 0x7f0b03f1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, feeItem1:Ljava/lang/String;
    const v2, 0x7f0b03f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, feeItem2:Ljava/lang/String;
    iget-boolean v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->isInit:Z

    if-eqz v2, :cond_0

    .line 88
    const v2, 0x7f0b03f0

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, ""

    .line 91
    :cond_0
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    iget-object v3, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 92
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x8

    .line 46
    iget-object v3, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    const v4, 0x7f08041f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 47
    .local v0, realTimeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    iget-object v3, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    const v4, 0x7f080424

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 49
    .local v1, realTimeMoneyLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 51
    iget-object v3, p0, Lcom/didi/map/marker/DriverRuningInfoWindowAdapter;->mWindow:Landroid/view/View;

    const v4, 0x7f08041e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/didi/common/richtextview/RichTextView;

    .line 52
    .local v2, richTextView:Lcom/didi/common/richtextview/RichTextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 53
    invoke-virtual {v2, p1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
