.class public Lcom/didi/common/ui/component/SwitchBar;
.super Landroid/view/View;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;
    }
.end annotation


# static fields
.field private static final THRESHOLD_PREF_PARAMS:D = 0.11

.field private static final THRESHOLD_TIME:I = 0xc8

.field private static final X_PREF_PARAMS:D = 0.0025

.field public static final Y_PREF_PARAMS:D = 0.0074


# instance fields
.field private THRESHOLD_VALUE:F

.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private downTime:J

.field private downX:F

.field private listener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

.field private mCurrStatus:Z

.field private mHeightDiff:F

.field private mThreshold:F

.field private mXPrefValue:F

.field private mYPrefValue:F

.field private nowX:F

.field private onSliping:Z

.field private switch_btn:Landroid/graphics/Bitmap;

.field private switch_off_btn:Landroid/graphics/Bitmap;

.field private switch_on_btn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    .line 56
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    .line 61
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->init()V

    .line 62
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 153
    .local v0, mParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .prologue
    const v6, 0x7f0202be

    const/4 v5, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c0

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202bf

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_on_btn:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    .line 80
    const v3, 0x7f090304

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    .line 81
    .local v1, bgOnWidthRatio:F
    const v3, 0x7f090303

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v0

    .line 82
    .local v0, bgOnHeightRatio:F
    const v3, 0x7f090305

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v2

    .line 84
    .local v2, switchOnRatio:F
    sub-float v3, v2, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mHeightDiff:F

    .line 86
    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3, v1, v0, v4, v5}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    .line 87
    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3, v1, v0, v4, v5}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    .line 88
    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_on_btn:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3, v2, v2, v4, v5}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_on_btn:Landroid/graphics/Bitmap;

    .line 89
    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3, v2, v2, v4, v5}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0, p0}, Lcom/didi/common/ui/component/SwitchBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 98
    .local v1, x:F
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->listener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    .line 101
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    if-nez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    .line 114
    :goto_1
    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->onSliping:Z

    if-eqz v2, :cond_6

    .line 115
    iget v2, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 137
    :goto_2
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_8

    .line 138
    iget v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mXPrefValue:F

    neg-float v1, v2

    .line 148
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_on_btn:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 117
    :cond_3
    iget v2, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mThreshold:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 118
    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    if-eqz v2, :cond_4

    .line 119
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_off_btn:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    add-float v1, v2, v3

    goto :goto_2

    .line 126
    :cond_5
    iget v2, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v2, v3

    goto :goto_2

    .line 129
    :cond_6
    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    if-eqz v2, :cond_7

    .line 130
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    add-float v1, v2, v3

    goto :goto_2

    .line 132
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 143
    :cond_8
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    add-float v1, v2, v3

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->invalidate()V

    move v0, v1

    .line 207
    :cond_1
    return v0

    .line 162
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/common/ui/component/SwitchBar;->attemptClaimDrag()V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/common/ui/component/SwitchBar;->downTime:J

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/didi/common/ui/component/SwitchBar;->downX:F

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 168
    iput-boolean v1, p0, Lcom/didi/common/ui/component/SwitchBar;->onSliping:Z

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 181
    iput-boolean v0, p0, Lcom/didi/common/ui/component/SwitchBar;->onSliping:Z

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/common/ui/component/SwitchBar;->downTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->downX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 184
    iput-boolean v1, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/component/SwitchBar;->listener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/didi/common/ui/component/SwitchBar;->listener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    invoke-interface {v0, p0, v2}, Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;->OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V

    goto/16 :goto_0

    .line 187
    :cond_2
    iput-boolean v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    .line 188
    iput v6, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    goto :goto_1

    .line 191
    :cond_3
    iget-boolean v2, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    if-eqz v2, :cond_4

    .line 192
    iput-boolean v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    .line 193
    iput v6, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/didi/common/ui/component/SwitchBar;->switch_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    .line 196
    iput-boolean v1, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    goto :goto_1

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/didi/common/ui/component/SwitchBar;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    .line 230
    :goto_0
    iput-boolean p1, p0, Lcom/didi/common/ui/component/SwitchBar;->mCurrStatus:Z

    .line 232
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SwitchBar;->invalidate()V

    .line 233
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->nowX:F

    goto :goto_0
.end method

.method public setOnChangedListener(Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/didi/common/ui/component/SwitchBar;->listener:Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;

    .line 217
    return-void
.end method

.method public setXprefValue(II)V
    .locals 4
    .parameter "width"
    .parameter "heighth"

    .prologue
    .line 66
    int-to-double v0, p2

    const-wide v2, 0x3f7e4f765fd8adacL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    .line 67
    int-to-double v0, p1

    const-wide v2, 0x3f647ae147ae147bL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mXPrefValue:F

    .line 68
    int-to-double v0, p1

    const-wide v2, 0x3fbc28f5c28f5c29L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mThreshold:F

    .line 69
    iget v0, p0, Lcom/didi/common/ui/component/SwitchBar;->mYPrefValue:F

    iget v1, p0, Lcom/didi/common/ui/component/SwitchBar;->mHeightDiff:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/didi/common/ui/component/SwitchBar;->THRESHOLD_VALUE:F

    .line 70
    return-void
.end method
