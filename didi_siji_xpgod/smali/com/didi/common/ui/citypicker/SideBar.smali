.class public Lcom/didi/common/ui/citypicker/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 98
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 99
    .local v5, y:F
    iget v4, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 100
    .local v4, oldChoose:I
    iget-object v3, p0, Lcom/didi/common/ui/citypicker/SideBar;->onTouchingLetterChangedListener:Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;

    .line 101
    .local v3, listener:Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;
    sget-object v6, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v2, v6, 0x1

    .line 102
    .local v2, length:I
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 104
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    .line 114
    if-eq v4, v1, :cond_2

    .line 115
    if-ltz v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 116
    if-eqz v3, :cond_0

    .line 117
    if-nez v1, :cond_3

    .line 118
    const-string v6, "star"

    invoke-interface {v3, v6}, Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 124
    iget-object v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v7, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_1
    iput v1, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 129
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->invalidate()V

    .line 135
    :cond_2
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 106
    :pswitch_0
    const/4 v6, -0x1

    iput v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    .line 107
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->invalidate()V

    .line 108
    iget-object v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_3
    sget-object v6, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-interface {v3, v6}, Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->getHeight()I

    move-result v4

    .line 61
    .local v4, height:I
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->getWidth()I

    move-result v8

    .line 62
    .local v8, width:I
    sget-object v11, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    array-length v11, v11

    add-int/lit8 v6, v11, 0x1

    .line 63
    .local v6, length:I
    div-int v7, v4, v6

    .line 66
    .local v7, singleHeight:I
    const v11, 0x7f0900d3

    invoke-static {v11}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    .line 67
    .local v1, bgOnWidthRatio:F
    const v11, 0x7f0900d3

    invoke-static {v11}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v0

    .line 68
    .local v0, bgOnHeightRatio:F
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02002b

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v12, 0x1

    invoke-static {v2, v1, v0, v11, v12}, Lutil/ImageUtil;->scale(Landroid/graphics/Bitmap;FFLandroid/widget/ImageView$ScaleType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    .local v3, bm:Landroid/graphics/Bitmap;
    const v11, 0x7f0900d1

    invoke-static {v11}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v11

    const v12, 0x7f0900d2

    invoke-static {v12}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v12

    iget-object v13, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v11, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_1

    .line 76
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    const v12, 0x7f07001e

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    const v12, 0x7f0901ce

    invoke-static {v12}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->choose:I

    if-ne v5, v11, :cond_0

    .line 82
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    const-string v12, "#3399ff"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 87
    :cond_0
    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v13, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float v9, v11, v12

    .line 88
    .local v9, xPos:F
    mul-int v11, v7, v5

    add-int/2addr v11, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v10, v11

    .line 89
    .local v10, yPos:F
    sget-object v11, Lcom/didi/common/ui/citypicker/SideBar;->b:[Ljava/lang/String;

    aget-object v11, v11, v5

    iget-object v12, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v11, p0, Lcom/didi/common/ui/citypicker/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->reset()V

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    .end local v9           #xPos:F
    .end local v10           #yPos:F
    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/SideBar;->onTouchingLetterChangedListener:Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;

    .line 140
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "mTextDialog"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/SideBar;->mTextDialog:Landroid/widget/TextView;

    .line 42
    return-void
.end method
