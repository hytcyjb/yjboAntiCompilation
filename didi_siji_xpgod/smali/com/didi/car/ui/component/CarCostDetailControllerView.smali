.class public Lcom/didi/car/ui/component/CarCostDetailControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarCostDetailControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarCostDetailControllerView$3;,
        Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;,
        Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;
    }
.end annotation


# instance fields
.field private mDissent:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

.field private mLayoutInstruction:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCostDetailInstructionClicked"
        id = 0x7f0801e2
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801da
    .end annotation
.end field

.field private mTxtPaidCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801de
    .end annotation
.end field

.field private mTxtTips:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801e0
    .end annotation
.end field

.field private mViewCouponItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801e1
    .end annotation
.end field

.field private mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801df
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 82
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mDissent:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 96
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->init()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mDissent:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 91
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    sget-object v0, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mDissent:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    .line 86
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->init()V

    .line 87
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resid"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resid"
    .parameter "formatArgs"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 101
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f0b0429

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 102
    new-instance v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView$1;-><init>(Lcom/didi/car/ui/component/CarCostDetailControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v1, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarCostDetailControllerView$Dissent;->getTextId()I

    move-result v1

    new-instance v2, Lcom/didi/car/ui/component/CarCostDetailControllerView$2;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/component/CarCostDetailControllerView$2;-><init>(Lcom/didi/car/ui/component/CarCostDetailControllerView;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "fee"

    .prologue
    .line 254
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

    const-string v0, "0.00"

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

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public onCostDetailInstructionClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mListener:Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;->onCostDetailInstructionClicked(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f030051

    return v0
.end method

.method protected onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mListener:Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    .line 274
    return-void
.end method

.method protected onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mListener:Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method public setCarOrderTotalCount(Lcom/didi/car/model/FeeDetail;)V
    .locals 1
    .parameter "totalCount"

    .prologue
    .line 128
    instance-of v0, p1, Lcom/didi/car/model/CarFeeDetail;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/didi/car/model/CarFeeDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setCarOrderTotalCountByCarFee(Lcom/didi/car/model/CarFeeDetail;)V

    .line 133
    :goto_0
    return-void

    .line 131
    .restart local p1
    :cond_0
    check-cast p1, Lcom/didi/car/model/CarNewFeeDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setCarOrderTotalCountByFlierFee(Lcom/didi/car/model/CarNewFeeDetail;)V

    goto :goto_0
.end method

.method public setCarOrderTotalCountByCarFee(Lcom/didi/car/model/CarFeeDetail;)V
    .locals 9
    .parameter "totalCount"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    iget-object v4, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/didi/car/model/CarFeeDetail;->payTitle:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 138
    const v4, 0x7f0b0476

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, yuan:Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    .local v2, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    const v4, 0x7f0b02e4

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    const v4, 0x7f0b02d8

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->drivingDistance:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const v4, 0x7f0b02e3

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->lowSpeedTime:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const v4, 0x7f0b02dc

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    const v4, 0x7f0b02e0

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_4
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    const v4, 0x7f0b02e2

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_5
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 161
    const v4, 0x7f0b02d3

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_6
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    const v4, 0x7f0b02d9

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->emptyDistance:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_7
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    const v4, 0x7f0b02de

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->nightDistance:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_8
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 170
    const v4, 0x7f0b02d2

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_9
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 174
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceTitle:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_a
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 178
    const v4, 0x7f0b02df

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_b
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 181
    const v4, 0x7f0b02db

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_c
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 185
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->specialTitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_d
    iget-object v4, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v4, v2}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItemsByBigFixedDistance(Ljava/util/Map;)V

    .line 190
    new-instance v2, Ljava/util/LinkedHashMap;

    .end local v2           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .restart local v2       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 193
    const v4, 0x7f0b02cb

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_e
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 196
    const v4, 0x7f0b02c9

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_f
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 201
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOpreratActInfo;

    .line 202
    .local v1, info:Lcom/didi/car/model/CarOpreratActInfo;
    invoke-virtual {v1}, Lcom/didi/car/model/CarOpreratActInfo;->getCoupenValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 203
    invoke-virtual {v1}, Lcom/didi/car/model/CarOpreratActInfo;->getCouponText()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/didi/car/model/CarOpreratActInfo;->getCoupenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/didi/car/model/CarOpreratActInfo;
    :cond_11
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->voucherPay:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 209
    const v4, 0x7f0b02bf

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->voucherPay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_12
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->balancePayTipForDetail:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 213
    const/16 v4, 0x15

    iget v5, p1, Lcom/didi/car/model/CarFeeDetail;->payType:I

    if-ne v4, v5, :cond_15

    .line 214
    const v4, 0x7f0b02c8

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->balancePayTipForDetail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_13
    :goto_1
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 221
    iget-object v4, p1, Lcom/didi/car/model/CarFeeDetail;->paymentName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_14
    iget-object v4, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mViewCouponItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v4, v2}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItemsByBigFixedDistance(Ljava/util/Map;)V

    .line 225
    return-void

    .line 216
    :cond_15
    const v4, 0x7f0b02c6

    invoke-direct {p0, v4}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/didi/car/model/CarFeeDetail;->balancePayTipForDetail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setCarOrderTotalCountByFlierFee(Lcom/didi/car/model/CarNewFeeDetail;)V
    .locals 7
    .parameter "totalCount"

    .prologue
    .line 229
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/didi/car/model/CarNewFeeDetail;->payTitle:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 230
    const v5, 0x7f0b0476

    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, yuan:Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 234
    .local v3, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/didi/car/model/CarNewFeeDetail;->basicFeeItemInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarFeeItemInfo;

    .line 235
    .local v1, feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v5, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v6, v1, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    .end local v1           #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_1
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v5, v3}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItemsByBigFixedDistance(Ljava/util/Map;)V

    .line 242
    new-instance v3, Ljava/util/LinkedHashMap;

    .end local v3           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 244
    .restart local v3       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/didi/car/model/CarNewFeeDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarFeeItemInfo;

    .line 245
    .local v0, favorlFeeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v5, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->isValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v6, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    .end local v0           #favorlFeeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_3
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mViewCouponItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v5, v3}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItemsByBigFixedDistance(Ljava/util/Map;)V

    .line 251
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView;->mListener:Lcom/didi/car/ui/component/CarCostDetailControllerView$CarCostDetailControllerListener;

    .line 125
    return-void
.end method
