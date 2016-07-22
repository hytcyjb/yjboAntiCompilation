.class public Lcom/didi/soso/location/view/LocationView;
.super Landroid/widget/ImageView;
.source "LocationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/soso/location/view/LocationView$ChangeListener;
    }
.end annotation


# instance fields
.field private change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private layout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/didi/soso/location/view/LocationView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/didi/soso/location/view/LocationView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/didi/soso/location/view/LocationView;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/didi/soso/location/view/LocationView;)Lcom/didi/soso/location/view/LocationView$ChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x6a

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v1

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    const v0, 0x7f0201b9

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setImageResource(I)V

    .line 40
    new-instance v0, Lcom/didi/soso/location/view/LocationView$1;

    invoke-direct {v0, p0}, Lcom/didi/soso/location/view/LocationView$1;-><init>(Lcom/didi/soso/location/view/LocationView;)V

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public removeChangeListener()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 75
    :cond_0
    return-void
.end method

.method public setBottomMargin(F)V
    .locals 5
    .parameter "margin"

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getWindowHeight(Landroid/app/Activity;)I

    move-result v0

    .line 54
    .local v0, h:I
    iget-object v1, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    iget-object v1, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/didi/soso/location/view/LocationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/soso/location/view/LocationView;->setClickable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/didi/soso/location/view/LocationView;->hideView()V

    .line 58
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 4
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v1

    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->computeScaledVerticalSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setClickable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/didi/soso/location/view/LocationView;->hideView()V

    .line 66
    return-void
.end method

.method public setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 70
    return-void
.end method

.method public showView()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/view/LocationView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method
