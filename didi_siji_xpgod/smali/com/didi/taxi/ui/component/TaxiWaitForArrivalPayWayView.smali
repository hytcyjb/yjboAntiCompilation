.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;
.super Landroid/widget/RelativeLayout;
.source "TaxiWaitForArrivalPayWayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    }
.end annotation


# static fields
.field private static final sPayIconEnterpriseId:I = 0x7f02014e

.field private static final sPayIconQQId:I = 0x7f02014f

.field private static final sPayIconWeixinId:I = 0x7f020150

.field private static final sPayIconZhifubaoId:I = 0x7f020151


# instance fields
.field private mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

.field private mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;

.field private mPayWayExtendItem:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initViews()V

    .line 51
    return-void
.end method

.method private initHolder(Lcom/didi/taxi/model/TaxiPayWay;Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;I)V
    .locals 3
    .parameter "payWay"
    .parameter "holder"
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPayWay;->getChannelId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initIconByChannelId(ILcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;)V

    .line 205
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPayWay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPayWay;->getChannelId()I

    move-result v0

    iput v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    .line 207
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    iput-boolean v2, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 210
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPayWay;->getActivityText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPayWay;->getActivityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method

.method private initIconByChannelId(ILcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;)V
    .locals 2
    .parameter "channelId"
    .parameter "viewHolder"

    .prologue
    .line 217
    const/16 v0, 0x7f

    if-ne v0, p1, :cond_0

    .line 218
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    :cond_0
    const/16 v0, 0x84

    if-ne v0, p1, :cond_1

    .line 222
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    :cond_1
    const/16 v0, 0x80

    if-ne v0, p1, :cond_2

    .line 226
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    :cond_2
    const/16 v0, 0x7d

    if-ne v0, p1, :cond_3

    .line 230
    iget-object v0, p2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    :cond_3
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300ff

    invoke-static {v2, v3, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iput-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .end local v0           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    invoke-direct {v0, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;)V

    .line 60
    .restart local v0       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    const v2, 0x7f080589

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    .line 61
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v2, 0x7f08058a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    .line 63
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v3, 0x7f02014e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    const v2, 0x7f08058b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayName:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f08058c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f08058d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    .line 67
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 68
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 69
    const/16 v2, 0x7d

    iput v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    .line 70
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iput-boolean v5, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 72
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aput-object v0, v2, v4

    .line 74
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .end local v0           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    invoke-direct {v0, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;)V

    .line 75
    .restart local v0       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    const v2, 0x7f08058e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    .line 76
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f08058f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    .line 78
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v3, 0x7f020150

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    const v2, 0x7f080590

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayName:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f080591

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f080592

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    .line 82
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 83
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 85
    const/16 v2, 0x7f

    iput v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    .line 86
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aput-object v0, v2, v5

    .line 87
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 89
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .end local v0           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    invoke-direct {v0, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;)V

    .line 90
    .restart local v0       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    const v2, 0x7f080593

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    .line 91
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v2, 0x7f080594

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    .line 93
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v3, 0x7f020151

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    const v2, 0x7f080595

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayName:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f080597

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    .line 97
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 98
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 99
    const/16 v2, 0x80

    iput v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    .line 100
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iput-boolean v5, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 102
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 104
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .end local v0           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    invoke-direct {v0, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$1;)V

    .line 105
    .restart local v0       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    const v2, 0x7f080598

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    .line 106
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v2, 0x7f080599

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    .line 108
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayIcon:Landroid/widget/ImageView;

    const v3, 0x7f02014f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    const v2, 0x7f08059a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayName:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f08059b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayActivityText:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f08059c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    .line 112
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 113
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 114
    const/16 v2, 0x84

    iput v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    .line 115
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    iput-boolean v5, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 117
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 119
    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mPayWayExtendItem:Landroid/view/ViewGroup;

    .line 120
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mPayWayExtendItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method private notifyListenerIfNeed()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;->onEnterPrisePayWayChanged(Z)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;->onEnterPrisePayWayChanged(Z)V

    goto :goto_0
.end method

.method private onPayWayItemViewClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 273
    check-cast v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 274
    .local v0, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-object v2, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-eqz v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget-object v2, v2, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    :cond_2
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 284
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->notifyListenerIfNeed()V

    goto :goto_0
.end method

.method private setCurrentHolder(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 239
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public disableEnterprisePayWay()V
    .locals 8

    .prologue
    const/16 v7, 0x7d

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 301
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget v4, v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    if-ne v4, v7, :cond_1

    .line 303
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget-object v4, v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iput-boolean v5, v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 305
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .local v0, arr$:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 310
    .local v1, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget v4, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    if-ne v4, v7, :cond_2

    .line 311
    iget-object v4, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iput-boolean v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public enableEnterprisePayWay(Z)V
    .locals 8
    .parameter "checked"

    .prologue
    const/4 v7, 0x0

    .line 324
    const/4 v4, 0x0

    .line 326
    .local v4, tarHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .local v0, arr$:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 327
    .local v1, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_3

    iget-boolean v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    if-eqz v5, :cond_3

    .line 329
    iget-object v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    iget-object v5, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iput-boolean v7, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 332
    move-object v4, v1

    .line 337
    .end local v1           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    :cond_0
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 338
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-eqz v5, :cond_1

    .line 339
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget-object v5, v5, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :cond_1
    iput-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 344
    :cond_2
    return-void

    .line 326
    .restart local v1       #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCurrentPayChannelId()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    iget v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mChannelId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initPayWayItems(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiPayWay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, payWays:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiPayWay;>;"
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 128
    const/4 v8, 0x0

    .line 130
    .local v8, size:I
    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 134
    :cond_0
    if-nez v8, :cond_2

    .line 200
    :cond_1
    return-void

    .line 138
    :cond_2
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mCurrentHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .line 141
    const/4 v6, 0x0

    .line 143
    .local v6, needShowPayWaysCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v5, needHidePayWays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiPayWay;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_5

    .line 147
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-gt v1, v10, :cond_1

    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, payWay:Lcom/didi/taxi/model/TaxiPayWay;
    const/4 v0, 0x0

    .line 153
    .local v0, holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #payWay:Lcom/didi/taxi/model/TaxiPayWay;
    check-cast v7, Lcom/didi/taxi/model/TaxiPayWay;

    .line 154
    .restart local v7       #payWay:Lcom/didi/taxi/model/TaxiPayWay;
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aget-object v0, v10, v6

    .line 155
    iget-object v10, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiPayWay;->getShowType()I

    move-result v10

    if-eq v10, v12, :cond_4

    .line 158
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 163
    invoke-direct {p0, v7, v0, v11}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initHolder(Lcom/didi/taxi/model/TaxiPayWay;Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;I)V

    .line 166
    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiPayWay;->getChecked()I

    move-result v10

    if-ne v10, v12, :cond_3

    .line 167
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setCurrentHolder(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;)V

    goto :goto_1

    .line 172
    .end local v0           #holder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    .end local v7           #payWay:Lcom/didi/taxi/model/TaxiPayWay;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 173
    .local v2, needHideCount:I
    move v1, v6

    :goto_2
    add-int v10, v6, v2

    if-ge v1, v10, :cond_7

    .line 175
    sub-int v10, v1, v6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiPayWay;

    .line 176
    .local v4, needHidePayWay:Lcom/didi/taxi/model/TaxiPayWay;
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aget-object v3, v10, v1

    .line 177
    .local v3, needHideHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget-object v10, v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    invoke-direct {p0, v4, v3, v13}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initHolder(Lcom/didi/taxi/model/TaxiPayWay;Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;I)V

    .line 181
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiPayWay;->getChecked()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 182
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setCurrentHolder(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;)V

    .line 173
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    .end local v3           #needHideHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    .end local v4           #needHidePayWay:Lcom/didi/taxi/model/TaxiPayWay;
    :cond_7
    if-lez v2, :cond_8

    .line 187
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mPayWayExtendItem:Landroid/view/ViewGroup;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int v9, v6, v10

    .line 192
    .local v9, validCount:I
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 194
    move v1, v9

    :goto_3
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    array-length v10, v10

    if-ge v1, v10, :cond_1

    .line 195
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aget-object v10, v10, v1

    iput-boolean v12, v10, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    .line 196
    iget-object v10, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    aget-object v10, v10, v1

    iget-object v10, v10, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->onPayWayItemViewClicked(Landroid/view/View;)V

    .line 255
    :goto_0
    return-void

    .line 247
    :pswitch_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->showAllValidPayWayViews()V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x7f08059d
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;

    .line 348
    return-void
.end method

.method public showAllValidPayWayViews()V
    .locals 6

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mHolders:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;

    .local v0, arr$:[Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 259
    .local v3, viewHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    iget-boolean v4, v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mInvalid:Z

    if-nez v4, :cond_0

    .line 260
    iget-object v4, v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;->mPayWayItem:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v3           #viewHolder:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$DataHolder;
    :cond_1
    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->mPayWayExtendItem:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    return-void
.end method
