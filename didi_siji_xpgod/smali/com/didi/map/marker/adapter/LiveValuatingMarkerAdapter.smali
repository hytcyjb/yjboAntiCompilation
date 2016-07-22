.class public Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "LiveValuatingMarkerAdapter.java"


# instance fields
.field private arrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 30
    const v0, 0x7f0300c9

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->setLayout(I)V

    .line 31
    iget-object v0, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f0801b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->arrow:Landroid/widget/ImageView;

    .line 32
    return-void
.end method

.method private fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V
    .locals 9
    .parameter "feeItem1"
    .parameter "feeItem2"
    .parameter "totalFee"
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 90
    const v7, 0x7f080421

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/didi/common/richtextview/RichTextView;

    .line 91
    .local v4, milaege:Landroid/widget/TextView;
    const v7, 0x7f080422

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/didi/common/richtextview/RichTextView;

    .line 92
    .local v5, minutes:Landroid/widget/TextView;
    const v7, 0x7f080425

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 93
    .local v6, money:Landroid/widget/TextView;
    const v7, 0x7f080427

    invoke-virtual {p4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, decimal:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_0
    invoke-static {p3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, m:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 104
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, intm:Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, dec:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .end local v0           #dec:Ljava/lang/String;
    .end local v2           #intm:Ljava/lang/String;
    :goto_1
    return-void

    .line 98
    .end local v3           #m:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    .restart local v3       #m:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v7, "00"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 114
    :cond_2
    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const-string v7, "00"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected setInfo(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 36
    return-void
.end method

.method public updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 9
    .parameter "valuating"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 41
    iget-object v5, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->arrow:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v4, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    .line 43
    .local v4, feeItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarFeeItemInfo;>;"
    const-string v2, ""

    .line 44
    .local v2, feeItem1:Ljava/lang/String;
    const-string v3, ""

    .line 46
    .local v3, feeItem2:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 48
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarFeeItemInfo;

    .line 49
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

    .line 52
    .end local v0           #feeInfoItem1:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 53
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarFeeItemInfo;

    .line 54
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

    .line 57
    .end local v1           #feeInfoItem2:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    iget v5, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    iget-object v6, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 58
    iget v5, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    iget-object v6, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mPress:Landroid/view/View;

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 59
    return-void
.end method

.method public updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 5
    .parameter "valuating"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->arrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
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

    .line 66
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

    .line 67
    .local v1, feeItem2:Ljava/lang/String;
    iget-boolean v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->isInit:Z

    if-eqz v2, :cond_0

    .line 68
    const v2, 0x7f0b03f0

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, ""

    .line 71
    :cond_0
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    iget-object v3, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 72
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    iget-object v3, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mPress:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 73
    return-void
.end method

.method public updateData(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V
    .locals 7
    .parameter "valuating"

    .prologue
    .line 76
    iget v3, p1, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->distance:I

    int-to-float v3, v3

    const/high16 v4, 0x447a

    div-float v0, v3, v4

    .line 77
    .local v0, distance:F
    float-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 78
    const v0, 0x3dcccccd

    .line 80
    :cond_0
    const v3, 0x7f0b02ae

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/didi/common/util/Utils;->transferToOneDicmal(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, feeItem1:Ljava/lang/String;
    const-string v2, ""

    .line 84
    .local v2, feeItem2:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->arrow:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-wide v3, p1, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->fee:D

    double-to-float v3, v3

    iget-object v4, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 86
    iget-wide v3, p1, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->fee:D

    double-to-float v3, v3

    iget-object v4, p0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->mPress:Landroid/view/View;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->fillData(Ljava/lang/String;Ljava/lang/String;FLandroid/view/View;)V

    .line 87
    return-void
.end method
