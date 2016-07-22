.class public Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "BtsPagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;,
        Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;,
        Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;,
        Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$ViewTabProvider;,
        Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private mTabFastDoubleClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

.field private final pageListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private selectedPosition:I

.field private selectedTabTextColor:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x2

    const v7, -0x99999a

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v2, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;-><init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;)V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pageListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;

    .line 75
    iput v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    .line 76
    iput v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedPosition:I

    .line 77
    const/4 v2, 0x0

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    .line 82
    iput v7, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    .line 83
    const/high16 v2, 0x1a00

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    .line 84
    const/high16 v2, 0x1a00

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    .line 86
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    .line 87
    iput-boolean v4, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    .line 89
    const/16 v2, 0x34

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    .line 90
    const/16 v2, 0x8

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    .line 91
    iput v8, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    .line 92
    const/16 v2, 0xc

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    .line 93
    const/16 v2, 0x18

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    .line 94
    iput v4, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerWidth:I

    .line 96
    const/16 v2, 0xc

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    .line 97
    iput v7, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    .line 98
    iput v7, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 100
    iput v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 102
    iput v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->lastScrollX:I

    .line 104
    const v2, 0x7f02004a

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabBackgroundResId:I

    .line 121
    invoke-virtual {p0, v4}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->setFillViewport(Z)V

    .line 122
    invoke-virtual {p0, v5}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 124
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 125
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 131
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    .line 132
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    .line 133
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    .line 134
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    .line 135
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    .line 136
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerWidth:I

    .line 137
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v8, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    .line 141
    sget-object v2, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, a:Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    .line 144
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    sget-object v2, Lcom/sdu/didi/psnger/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    .line 155
    const/16 v2, 0xb

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    .line 156
    const/16 v2, 0xc

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    .line 157
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    .line 158
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    .line 159
    const/4 v2, 0x3

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    .line 160
    const/4 v2, 0x4

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    .line 161
    const/4 v2, 0x5

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    .line 162
    const/4 v2, 0x6

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    .line 163
    const/16 v2, 0x8

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabBackgroundResId:I

    .line 164
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    .line 165
    const/4 v2, 0x7

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    .line 166
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->mTabFastDoubleClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$600(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method private addIconTab(II)V
    .locals 2
    .parameter "position"
    .parameter "resId"

    .prologue
    .line 251
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, tab:Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 256
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "tab"

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 282
    new-instance v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$2;-><init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 305
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "title"

    .prologue
    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, tab:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 247
    return-void
.end method

.method private addViewTab(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "v"

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 262
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 348
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 354
    .local v0, newScrollX:I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 355
    :cond_2
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 358
    :cond_3
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 359
    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->lastScrollX:I

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 7

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    if-ge v0, v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 316
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 317
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 318
    .local v1, rl:Landroid/widget/RelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 319
    .local v3, tv:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 321
    check-cast v2, Landroid/widget/TextView;

    .line 324
    .local v2, tab:Landroid/widget/TextView;
    iget v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-boolean v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v5, :cond_0

    .line 330
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 331
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 337
    :cond_0
    :goto_1
    iget v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedPosition:I

    if-ne v0, v5, :cond_1

    .line 338
    iget v5, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    .end local v1           #rl:Landroid/widget/RelativeLayout;
    .end local v2           #tab:Landroid/widget/TextView;
    .end local v3           #tv:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    .restart local v2       #tab:Landroid/widget/TextView;
    .restart local v3       #tv:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    .end local v1           #rl:Landroid/widget/RelativeLayout;
    .end local v2           #tab:Landroid/widget/TextView;
    .end local v3           #tv:Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 214
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$ViewTabProvider;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$ViewTabProvider;

    invoke-interface {v1, v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$ViewTabProvider;->getPageTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addViewTab(ILandroid/view/View;)V

    .line 216
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 228
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$1;-><init>(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 367
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 407
    :cond_0
    return-void

    .line 373
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getHeight()I

    move-result v12

    .line 376
    .local v12, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 384
    .local v11, currentTab:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 385
    .local v2, lineLeft:F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 388
    .local v4, lineRight:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 391
    .local v14, nextTab:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 392
    .local v15, nextTabLeft:F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 394
    .local v16, nextTabRight:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 395
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 398
    .end local v14           #nextTab:Landroid/view/View;
    .end local v15           #nextTabLeft:F
    .end local v16           #nextTabRight:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 405
    .local v17, tab:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 607
    move-object v0, p1

    check-cast v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;

    .line 608
    .local v0, savedState:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 609
    iget v1, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    .line 610
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->requestLayout()V

    .line 611
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 616
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 617
    .local v0, savedState:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 618
    return-object v0
.end method

.method public selectCurrentTab(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabCount:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 266
    sget-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 267
    const-string v0, "pbdxmgrorder05_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    const-string v0, "pbdxwhorder08_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 278
    :cond_1
    return-void

    .line 269
    :cond_2
    sget-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 270
    const-string v0, "pbdxmgrorder03_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    const-string v0, "pbdxmgrorder06_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    sget-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 273
    const-string v0, "pbdxmgrorder04_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    const-string v0, "pbdxmgrorder08_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .parameter "textAllCaps"

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->textAllCaps:Z

    .line 542
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .parameter "dividerColor"

    .prologue
    .line 487
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    .line 488
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 489
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerColor:I

    .line 493
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 494
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter "dividerPaddingPx"

    .prologue
    .line 510
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->dividerPadding:I

    .line 511
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 512
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .parameter "indicatorColor"

    .prologue
    .line 448
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    .line 450
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 451
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorColor:I

    .line 456
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 457
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .parameter "indicatorLineHeightPx"

    .prologue
    .line 464
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->indicatorHeight:I

    .line 465
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 466
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 208
    return-void
.end method

.method public setOnTabFastDoubleClickListener(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->mTabFastDoubleClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    .line 204
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .parameter "scrollOffsetPx"

    .prologue
    .line 519
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->scrollOffset:I

    .line 520
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 521
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 568
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    .line 569
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 570
    return-void
.end method

.method public setSelectedTextColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectedTabTextColor:I

    .line 574
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 575
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .parameter "shouldExpand"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->shouldExpand:Z

    .line 529
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 530
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 588
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabBackgroundResId:I

    .line 589
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 590
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .parameter "paddingPx"

    .prologue
    .line 597
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabPadding:I

    .line 598
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 599
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 554
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    .line 555
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 556
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextColor:I

    .line 560
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 561
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .parameter "textSizePx"

    .prologue
    .line 545
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTextSize:I

    .line 546
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 547
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .parameter "typeface"
    .parameter "style"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 583
    iput p2, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 584
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->updateTabStyles()V

    .line 585
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .parameter "underlineColor"

    .prologue
    .line 473
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    .line 474
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 475
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineColor:I

    .line 479
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 480
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .parameter "underlineHeightPx"

    .prologue
    .line 501
    iput p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->underlineHeight:I

    .line 502
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->invalidate()V

    .line 503
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter "pager"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 189
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->pageListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 196
    return-void
.end method
