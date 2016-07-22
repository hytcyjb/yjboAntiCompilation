.class public Lcom/didi/car/ui/component/CarPayTypeView;
.super Landroid/widget/RelativeLayout;
.source "CarPayTypeView.java"


# static fields
.field public static final PAYMENTMODE_ENTERPRISE:I = 0x2afa


# instance fields
.field public mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

.field private mContainerPayType:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectPayMode:I

.field private mMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/didi/car/ui/component/CarPayTypeItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    .line 52
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayTypeView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    .line 42
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayTypeView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    .line 47
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayTypeView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private generatePayItemView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayTypeItemView;
    .locals 2
    .parameter "key"
    .parameter "iconUrl"
    .parameter "title"
    .parameter "ext"

    .prologue
    .line 137
    new-instance v0, Lcom/didi/car/ui/component/CarPayTypeItemView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarPayTypeItemView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/didi/car/ui/component/CarPayTypeItemView;->fillData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 140
    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030066

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    .line 59
    return-void
.end method


# virtual methods
.method public addPayItemView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayTypeItemView;
    .locals 4
    .parameter "paymentMode"
    .parameter "iconUrl"
    .parameter "title"
    .parameter "ext"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/car/ui/component/CarPayTypeView;->generatePayItemView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayTypeItemView;

    move-result-object v0

    .line 84
    .local v0, itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 86
    invoke-virtual {v0, v3}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setChecked(Z)V

    .line 87
    iput p1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    .line 89
    :cond_0
    return-object v0
.end method

.method public getContainerPayTypeLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPayMentMode()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    return v0
.end method

.method public getPayMentSize()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/didi/car/ui/component/CarPayTypeItemView;)V
    .locals 6
    .parameter "carPayTypeItemView"

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/didi/car/ui/component/CarPayTypeItemView;->toogle()V

    .line 121
    invoke-virtual {p1}, Lcom/didi/car/ui/component/CarPayTypeItemView;->isChecked()Z

    move-result v1

    .line 122
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/didi/car/ui/component/CarPayTypeItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    .line 124
    iget-object v4, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    .local v3, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mCurrentSelectPayMode:I

    if-eq v4, v5, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/ui/component/CarPayTypeItemView;

    .line 129
    .local v2, itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setChecked(Z)V

    goto :goto_0

    .line 133
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    .end local v3           #iter:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeAllPayType()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    return-void
.end method

.method public removeBalancePayType()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "-----------removeBalancePayType-------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    .line 109
    :cond_0
    return-void
.end method

.method public showAllPayType()V
    .locals 4

    .prologue
    .line 71
    iget-object v3, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/ui/component/CarPayTypeItemView;

    .line 75
    .local v1, itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarPayTypeItemView;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setVisibility(I)V

    goto :goto_0

    .line 79
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;
    :cond_1
    return-void
.end method

.method public updateBalancePayType(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "paymentMode"
    .parameter "iconUrl"
    .parameter "title"
    .parameter "ext"

    .prologue
    .line 93
    const-string v0, "-----------updateBalancePayType-------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "-----------updateBalancePayType---mBalanceItemView == null----"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/didi/car/ui/component/CarPayTypeItemView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarPayTypeItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    .line 97
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 98
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mContainerPayType:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeView;->mBalanceItemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    const v1, 0x7f02014d

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/didi/car/ui/component/CarPayTypeItemView;->fillData(IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
