.class public Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalCostDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    }
.end annotation


# instance fields
.field private mBtnPay:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onPayClicked"
        id = 0x7f080272
    .end annotation
.end field

.field private mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

.field private mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

.field private mTxtCarPayTips:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080271
    .end annotation
.end field

.field private mTxtCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080274
    .end annotation
.end field

.field private mTxtCostTitle:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080275
    .end annotation
.end field

.field private mTxtFavourTitle:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080278
    .end annotation
.end field

.field private mTxtFavourValue:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080277
    .end annotation
.end field

.field private mViewDetailItems:Lcom/didi/car/ui/component/CarPayBasicFeeView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080276
    .end annotation
.end field

.field private mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080279
    .end annotation
.end field

.field private mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08027a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;)Lcom/didi/car/ui/component/CarPayTypeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    return-object v0
.end method

.method private appendPayTip(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "payTip"
    .parameter "dest"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 178
    .local v0, hasNewTip:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    return-void

    .line 177
    .end local v0           #hasNewTip:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "url"

    .prologue
    .line 489
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$4;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPayTypeItemClickListener(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 321
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Lcom/didi/car/ui/component/CarPayTypeItemView;)V

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resid"
    .parameter "formatArgs"

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "url"

    .prologue
    .line 466
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$3;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$3;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Ljava/lang/String;)V

    return-object v0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "fee"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidNew(Ljava/lang/String;)Z
    .locals 3
    .parameter "fee"

    .prologue
    .line 170
    invoke-static {p1}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 172
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    return-void
.end method

.method private updateFeeItem(Lcom/didi/car/model/CarFeeDetail;)V
    .locals 7
    .parameter "totalCount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 366
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 367
    .local v0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v2, 0x7f0b0476

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, yuan:Ljava/lang/String;
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const v2, 0x7f0b02e4

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    const v2, 0x7f0b02d8

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->drivingDistance:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    const v2, 0x7f0b02e3

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->lowSpeedTime:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_2
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    const v2, 0x7f0b02dc

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_3
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    const v2, 0x7f0b02e0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_4
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    const v2, 0x7f0b02e2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_5
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 388
    const v2, 0x7f0b02d3

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_6
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 391
    const v2, 0x7f0b02d9

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->emptyDistance:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_7
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 394
    const v2, 0x7f0b02de

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->nightDistance:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_8
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 397
    const v2, 0x7f0b02d2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_9
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 401
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceTitle:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_a
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 405
    const v2, 0x7f0b02df

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_b
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 408
    const v2, 0x7f0b02db

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_c
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 412
    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->specialTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_d
    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewDetailItems:Lcom/didi/car/ui/component/CarPayBasicFeeView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->setItems(Ljava/util/Map;)V

    .line 416
    return-void
.end method

.method private updateFeeItem(Lcom/didi/car/model/CarNewFeeDetail;)V
    .locals 7
    .parameter "totalCount"

    .prologue
    .line 427
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 428
    .local v3, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v5, 0x7f0b0476

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, yuan:Ljava/lang/String;
    iget-object v0, p1, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    .line 431
    .local v0, basicInfos:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarFeeItemInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarFeeItemInfo;

    .line 432
    .local v2, info:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v5, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    iget-object v5, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v6, v2, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    .end local v2           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewDetailItems:Lcom/didi/car/ui/component/CarPayBasicFeeView;

    invoke-virtual {v5, v3}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->setItems(Ljava/util/Map;)V

    .line 437
    return-void
.end method

.method private updatePayBtnInformation(Lcom/didi/car/model/FeeDetail;)V
    .locals 6
    .parameter "carFeeDetail"

    .prologue
    const/16 v5, 0x8

    const v4, 0x7f0b02d4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    iget v0, v0, Lcom/didi/car/model/FeeDetail;->payType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCarPayTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCarPayTips:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->extraMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 349
    :goto_0
    instance-of v0, p1, Lcom/didi/car/model/CarNewFeeDetail;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mBtnPay:Lx/Button;

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->payButtonTitleLabel:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 363
    :goto_1
    return-void

    .line 340
    :cond_0
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v0, v1, :cond_2

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCarPayTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCarPayTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p1, Lcom/didi/car/model/FeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValidNew(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mBtnPay:Lx/Button;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/didi/car/model/FeeDetail;->payButtonTitle:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_4
    iget v0, p1, Lcom/didi/car/model/FeeDetail;->pennyFlag:I

    if-ne v0, v2, :cond_5

    .line 356
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mBtnPay:Lx/Button;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "0.01"

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mBtnPay:Lx/Button;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "0.0"

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePayItemInformation(Lcom/didi/car/model/CarFeeDetail;Lcom/didi/car/model/CarVoucherInfo;)V
    .locals 9
    .parameter "carFeeDetail"
    .parameter "voucherInfo"

    .prologue
    const/16 v8, 0x3ed

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarOrderPayView;->removeAllViews()V

    .line 233
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->favourFeeValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarFeeDetail;->favourFeeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarFeeDetail;->favourFeeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_0
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->wxPayTip:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3e9

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetail;->wxPayTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(ILjava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3eb

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(ILjava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3ec

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(ILjava/lang/String;)V

    .line 256
    :cond_2
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 257
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/car/model/CarOpreratActInfo;

    .line 258
    .local v7, info:Lcom/didi/car/model/CarOpreratActInfo;
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3f2

    invoke-virtual {v7}, Lcom/didi/car/model/CarOpreratActInfo;->getCouponText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/didi/car/model/CarOpreratActInfo;->getCoupenValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(IILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 239
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/didi/car/model/CarOpreratActInfo;
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_4
    iget v0, p1, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0b04e3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Lcom/didi/car/model/CarFeeDetail;->voucherUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(IILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pgxpay07_sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[order_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][conpon_count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValidNew(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    iget-object v1, p2, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lcom/didi/car/ui/component/CarOrderPayView;->resetPayItemView(ILjava/lang/String;)V

    .line 277
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3ea

    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(ILjava/lang/String;)V

    .line 281
    :cond_6
    return-void

    .line 273
    :cond_7
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetail;->voucherDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    const/16 v1, 0x3ee

    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetail;->voucherDesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(ILjava/lang/String;)V

    goto :goto_2
.end method

.method private updatePayItemInformation(Lcom/didi/car/model/CarNewFeeDetail;)V
    .locals 8
    .parameter "carFeeDetail"

    .prologue
    const/16 v1, 0x3ef

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarOrderPayView;->removeAllViews()V

    .line 201
    iget-object v0, p1, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_0
    iget-object v0, p1, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/car/model/CarFeeItemInfo;

    .line 213
    .local v7, itemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget v0, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 217
    iget v0, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v2, 0x3ed

    if-eq v0, v2, :cond_3

    .line 218
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    iget v2, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    iget-object v3, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v4, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    iget-object v5, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    :goto_2
    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(IILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 207
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #itemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtFavourValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 218
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #itemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_2
    iget-object v5, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    goto :goto_2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewOrderPay:Lcom/didi/car/ui/component/CarOrderPayView;

    iget v2, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    iget-object v3, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v4, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    iget-object v5, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/didi/car/ui/component/CarOrderPayView;->addPayItemView(IILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 226
    .end local v7           #itemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_4
    return-void
.end method

.method private updatePayTypeLayout(Lcom/didi/car/model/FeeDetail;)V
    .locals 11
    .parameter "feeDetail"

    .prologue
    const/16 v10, 0x8

    .line 284
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarPayTypeView;->removeAllPayType()V

    .line 286
    iget-object v5, p1, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 287
    :cond_0
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v5, v10}, Lcom/didi/car/ui/component/CarPayTypeView;->setVisibility(I)V

    .line 318
    :cond_1
    return-void

    .line 291
    :cond_2
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/didi/car/ui/component/CarPayTypeView;->setVisibility(I)V

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, needHideItem:Z
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, p1, Lcom/didi/car/model/FeeDetail;->carPayments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarPayment;

    .line 295
    .local v1, itemInfo:Lcom/didi/car/model/CarPayment;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----updatePayTypeLayout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/didi/car/model/CarPayment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    iget v6, v1, Lcom/didi/car/model/CarPayment;->paymentMode:I

    iget-object v7, v1, Lcom/didi/car/model/CarPayment;->paymentIconUrl:Ljava/lang/String;

    iget-object v8, v1, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    iget-object v9, v1, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/didi/car/ui/component/CarPayTypeView;->addPayItemView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayTypeItemView;

    move-result-object v2

    .line 298
    .local v2, itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    invoke-direct {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getPayTypeItemClickListener(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarPayTypeView;->getPayMentMode()I

    move-result v5

    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    const/16 v6, 0x2afa

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarPayTypeView;->getPayMentSize()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030067

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 301
    .local v4, view:Landroid/view/View;
    invoke-static {v4}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 302
    new-instance v5, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;

    invoke-direct {v5, p0, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v5, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v5}, Lcom/didi/car/ui/component/CarPayTypeView;->getContainerPayTypeLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    const/4 v3, 0x1

    .line 311
    goto :goto_0

    .line 312
    .end local v4           #view:Landroid/view/View;
    :cond_4
    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {v2, v10}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPayMentMode()I
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, currentPaymentMode:I
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarPayTypeView;->getPayMentMode()I

    move-result v0

    .line 423
    :cond_0
    return v0
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f03006c

    return v0
.end method

.method public onInstructionClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 452
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;->onCoseDetailInstructionClicked()V

    .line 455
    :cond_0
    return-void
.end method

.method public onPayClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 445
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 446
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;->onCostDetailPayClicked()V

    .line 448
    :cond_0
    return-void
.end method

.method public onPayCouponsViewClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "url"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 476
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;->onCostDetailCouponsClicked(Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method public onPayItemViewClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "url"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 499
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;->onItemTypeChecked(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onPayTypeItemViewClicked(I)V
    .locals 2
    .parameter "paymentMode"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 483
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 484
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;->onPayTypeItemClicked(II)V

    .line 486
    :cond_0
    return-void
.end method

.method public setCarOrderTotalCount(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V
    .locals 5
    .parameter "totalCount"
    .parameter "isNewPrice"
    .parameter "voucherInfo"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCostTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->basicFeeTitle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mTxtCost:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->basicFeeValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    .line 111
    if-eqz p2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updateFeeItem(Lcom/didi/car/model/CarNewFeeDetail;)V

    .line 117
    :goto_0
    iget v0, p1, Lcom/didi/car/model/FeeDetail;->payType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 118
    instance-of v0, p1, Lcom/didi/car/model/CarNewFeeDetail;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarNewFeeDetail;)V

    .line 125
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayTypeLayout(Lcom/didi/car/model/FeeDetail;)V

    .line 127
    iget-object v0, p1, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget v1, v1, Lcom/didi/car/model/CarPayment;->paymentMode:I

    iget-object v2, p1, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v2, v2, Lcom/didi/car/model/CarPayment;->paymentIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v3, v3, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v4, v4, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/car/ui/component/CarPayTypeView;->updateBalancePayType(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayBtnInformation(Lcom/didi/car/model/FeeDetail;)V

    .line 134
    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updateFeeItem(Lcom/didi/car/model/CarFeeDetail;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {p0, v0, p3}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarFeeDetail;Lcom/didi/car/model/CarVoucherInfo;)V

    goto :goto_1
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;

    .line 104
    return-void
.end method

.method public updateCarOrderTotalCount(Lcom/didi/car/model/CarVoucherInfo;)V
    .locals 1
    .parameter "voucherInfo"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    instance-of v0, v0, Lcom/didi/car/model/CarNewFeeDetail;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarNewFeeDetail;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayBtnInformation(Lcom/didi/car/model/FeeDetail;)V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarFeeDetail;Lcom/didi/car/model/CarVoucherInfo;)V

    goto :goto_0
.end method

.method public updateCarOrderTotalCount(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;ZZ)V
    .locals 5
    .parameter "voucherInfo"
    .parameter "totalCount"
    .parameter "isNewPrice"
    .parameter "refreshPayTypeView"

    .prologue
    .line 146
    iput-object p2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    .line 147
    if-eqz p3, :cond_1

    .line 148
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarNewFeeDetail;)V

    .line 152
    :goto_0
    if-eqz p4, :cond_0

    .line 153
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayTypeLayout(Lcom/didi/car/model/FeeDetail;)V

    .line 155
    :cond_0
    iget-object v0, p2, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    iget-object v1, p2, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget v1, v1, Lcom/didi/car/model/CarPayment;->paymentMode:I

    iget-object v2, p2, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v2, v2, Lcom/didi/car/model/CarPayment;->paymentIconUrl:Ljava/lang/String;

    iget-object v3, p2, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v3, v3, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    iget-object v4, p2, Lcom/didi/car/model/FeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v4, v4, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/car/ui/component/CarPayTypeView;->updateBalancePayType(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayBtnInformation(Lcom/didi/car/model/FeeDetail;)V

    .line 163
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mCarFeeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayItemInformation(Lcom/didi/car/model/CarFeeDetail;Lcom/didi/car/model/CarVoucherInfo;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarPayTypeView;->removeBalancePayType()V

    goto :goto_1
.end method
