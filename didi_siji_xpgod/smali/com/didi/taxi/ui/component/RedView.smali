.class public Lcom/didi/taxi/ui/component/RedView;
.super Landroid/widget/LinearLayout;
.source "RedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/RedView$RedListener;
    }
.end annotation


# instance fields
.field private mActivityId:I

.field private mCircle:Lcom/didi/common/ui/component/PayShareItemView;

.field private mDraw:Landroid/graphics/drawable/Drawable;

.field private mFriend:Lcom/didi/common/ui/component/PayShareItemView;

.field private mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

.field private mRedContent:Ljava/lang/String;

.field private mRedTitle:Ljava/lang/String;

.field private mRedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/RedView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/RedView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/RedView;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/didi/taxi/ui/component/RedView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/taxi/ui/component/RedView;->mDraw:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getImage(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 98
    new-instance v0, Lcom/didi/taxi/ui/component/RedView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/RedView$1;-><init>(Lcom/didi/taxi/ui/component/RedView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 106
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 82
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/RedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f4

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, view:Landroid/view/View;
    const v1, 0x7f07003a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    const v1, 0x7f08055c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    .line 85
    iget-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202db

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/RedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 86
    const v1, 0x7f08055b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    .line 87
    iget-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202dd

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/RedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 88
    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v1, 0x7f08055d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/didi/taxi/ui/component/RedView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f080561

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private sendRedWx(I)V
    .locals 1
    .parameter "to"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mDraw:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 111
    const v0, 0x7f0202a4

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mDraw:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/RedView$RedListener;->onRedClicked(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void

    .line 119
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/RedView;->sendRedWx(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/RedView;->sendRedWx(I)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x7f08055b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/didi/taxi/ui/component/RedView$RedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/taxi/ui/component/RedView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    .line 58
    return-void
.end method

.method public setRedInfo(Lcom/didi/car/model/CarRedRecordInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 72
    iget-object v0, p1, Lcom/didi/car/model/CarRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/RedView;->getImage(Ljava/lang/String;)V

    .line 74
    iget-object v0, p1, Lcom/didi/car/model/CarRedRecordInfo;->mRedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedTitle:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/didi/car/model/CarRedRecordInfo;->mRedContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedContent:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/didi/car/model/CarRedRecordInfo;->mRedUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedUrl:Ljava/lang/String;

    .line 77
    iget v0, p1, Lcom/didi/car/model/CarRedRecordInfo;->mActivityId:I

    iput v0, p0, Lcom/didi/taxi/ui/component/RedView;->mActivityId:I

    .line 78
    return-void
.end method

.method public setRedInfo(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 62
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/RedView;->getImage(Ljava/lang/String;)V

    .line 64
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedTitle:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedContent:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/RedView;->mRedUrl:Ljava/lang/String;

    .line 67
    iget v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mActivityId:I

    iput v0, p0, Lcom/didi/taxi/ui/component/RedView;->mActivityId:I

    .line 68
    return-void
.end method
