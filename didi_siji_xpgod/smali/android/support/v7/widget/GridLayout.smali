.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/support/v7/widget/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$Alignment;,
        Landroid/support/v7/widget/GridLayout$Spec;,
        Landroid/support/v7/widget/GridLayout$Interval;,
        Landroid/support/v7/widget/GridLayout$Bounds;,
        Landroid/support/v7/widget/GridLayout$PackedMap;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Landroid/support/v7/widget/GridLayout$MutableInt;,
        Landroid/support/v7/widget/GridLayout$Arc;,
        Landroid/support/v7/widget/GridLayout$LayoutParams;,
        Landroid/support/v7/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x4

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field public static final BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field private static final COLUMN_COUNT:I = 0x2

.field private static final COLUMN_ORDER_PRESERVED:I = 0x6

.field static final DEBUG:Z = false

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final END:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field public static final FILL:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field public static final LEFT:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field static final MAX_SIZE:I = 0x186a0

.field private static final ORIENTATION:I = 0x0

.field public static final RIGHT:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x5

.field public static final START:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field static final TAG:Ljava/lang/String; = null

.field public static final TOP:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field private static final TRAILING:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment; = null

.field static final UNINITIALIZED_HASH:I = 0x0

.field private static final USE_DEFAULT_MARGINS:I = 0x3

.field public static final VERTICAL:I = 0x1


# instance fields
.field alignmentMode:I

.field defaultGap:I

.field final horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

.field lastLayoutParamsHashCode:I

.field layoutParamsValid:Z

.field orientation:I

.field useDefaultMargins:Z

.field final verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 210
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TAG:Ljava/lang/String;

    .line 2461
    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2477
    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2493
    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2509
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2515
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2521
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2527
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2547
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2553
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2560
    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$5;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2579
    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2632
    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v3, v4}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;ZLandroid/support/v7/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 237
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v2, v4}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;ZLandroid/support/v7/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 238
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->layoutParamsValid:Z

    .line 239
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->orientation:I

    .line 240
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->useDefaultMargins:Z

    .line 241
    iput v3, p0, Landroid/support/v7/widget/GridLayout;->alignmentMode:I

    .line 243
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->lastLayoutParamsHashCode:I

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/GridLayout;->defaultGap:I

    .line 256
    sget-object v1, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 259
    const/4 v1, 0x2

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 261
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 262
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 263
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 264
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, b:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 552
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .parameter "flexibility"

    .prologue
    .line 2650
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForLayoutParamsModification()V
    .locals 3

    .prologue
    .line 879
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    .line 880
    .local v0, layoutParamsHashCode:I
    iget v1, p0, Landroid/support/v7/widget/GridLayout;->lastLayoutParamsHashCode:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/GridLayout;->lastLayoutParamsHashCode:I

    if-eq v1, v0, :cond_0

    .line 882
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 883
    sget-object v1, Landroid/support/v7/widget/GridLayout;->TAG:Ljava/lang/String;

    const-string v2, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    return-void
.end method

.method private static clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    .locals 3
    .parameter "minorRange"
    .parameter "minorWasDefined"
    .parameter "count"

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v1

    .line 654
    .local v1, size:I
    if-nez p2, :cond_0

    .line 658
    .end local v1           #size:I
    :goto_0
    return v1

    .line 657
    .restart local v1       #size:I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 658
    .local v0, min:I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 657
    .end local v0           #min:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .prologue
    .line 868
    const/4 v4, 0x1

    .line 869
    .local v4, result:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 870
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 871
    .local v1, c:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 869
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 873
    .local v3, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    goto :goto_1

    .line 875
    .end local v1           #c:Landroid/view/View;
    .end local v3           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    :cond_1
    return v4
.end method

.method private static createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .parameter "ltr"
    .parameter "rtl"

    .prologue
    .line 2530
    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$4;-><init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 9
    .parameter "graphics"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 771
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    .line 772
    .local v6, dx:I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v7

    .line 773
    .local v7, dy:I
    invoke-static {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getWidth()I

    move-result v8

    .line 775
    .local v8, width:I
    sub-int v0, v8, v6

    sub-int/2addr v0, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    sub-int v0, v8, v6

    sub-int/2addr v0, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 779
    .end local v8           #width:I
    :goto_0
    return-void

    .line 777
    :cond_0
    add-int v0, v6, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    add-int v0, v6, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 782
    int-to-float v1, p1

    int-to-float v2, p2

    add-int/lit8 v0, p3, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, p4, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 783
    return-void
.end method

.method private static fits([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 630
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v1

    .line 633
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 634
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 638
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 4
    .parameter "gravity"
    .parameter "horizontal"

    .prologue
    .line 558
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 559
    .local v1, mask:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 560
    .local v2, shift:I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 561
    .local v0, flags:I
    sparse-switch v0, :sswitch_data_0

    .line 575
    sget-object v3, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 558
    .end local v0           #flags:I
    .end local v1           #mask:I
    .end local v2           #shift:I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 559
    .restart local v1       #mask:I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 563
    .restart local v0       #flags:I
    .restart local v2       #shift:I
    :sswitch_0
    sget-object v3, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 565
    :sswitch_1
    sget-object v3, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 567
    :sswitch_2
    sget-object v3, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 569
    :sswitch_3
    sget-object v3, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 571
    :sswitch_4
    sget-object v3, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 573
    :sswitch_5
    sget-object v3, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 561
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/Space;

    if-ne v0, v1, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->defaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .parameter "c"
    .parameter "isAtEdge"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 588
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultMarginValue(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .parameter "c"
    .parameter "p"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 592
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout;->useDefaultMargins:Z

    if-nez v6, :cond_0

    .line 601
    :goto_0
    return v5

    .line 595
    :cond_0
    if-eqz p3, :cond_2

    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 596
    .local v4, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 597
    .local v0, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 598
    .local v3, span:Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz p3, :cond_5

    invoke-static {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 599
    .local v2, leading1:Z
    :goto_3
    if-eqz v2, :cond_7

    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_6

    .line 601
    .local v1, isAtEdge:Z
    :cond_1
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v5

    goto :goto_0

    .line 595
    .end local v0           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1           #isAtEdge:Z
    .end local v2           #leading1:Z
    .end local v3           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v4           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_2
    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    .line 596
    .restart local v4       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_2

    .restart local v0       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v3       #span:Landroid/support/v7/widget/GridLayout$Interval;
    :cond_4
    move v2, v5

    .line 598
    goto :goto_3

    :cond_5
    move v2, p4

    goto :goto_3

    .restart local v2       #leading1:Z
    :cond_6
    move v1, v5

    .line 599
    goto :goto_4

    :cond_7
    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    goto :goto_4
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 613
    iget v5, p0, Landroid/support/v7/widget/GridLayout;->alignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 614
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 621
    :goto_0
    return v5

    .line 616
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 617
    .local v0, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 618
    .local v3, margins:[I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 619
    .local v2, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 620
    .local v4, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 621
    .local v1, index:I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 616
    .end local v0           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1           #index:I
    .end local v2           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v3           #margins:[I
    .end local v4           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    .line 617
    .restart local v0       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 619
    .restart local v2       #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v3       #margins:[I
    :cond_3
    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_3

    .line 620
    .restart local v4       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 960
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "child"
    .parameter "horizontal"

    .prologue
    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->layoutParamsValid:Z

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 726
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 727
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 734
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 736
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .parameter "a"
    .parameter "valueIfEmpty"

    .prologue
    .line 542
    move v2, p1

    .line 543
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 544
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4
    .parameter "child"
    .parameter "parentWidthSpec"
    .parameter "parentHeightSpec"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 892
    iget v2, p0, Landroid/support/v7/widget/GridLayout;->mPaddingLeft:I

    iget v3, p0, Landroid/support/v7/widget/GridLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 894
    .local v1, childWidthSpec:I
    iget v2, p0, Landroid/support/v7/widget/GridLayout;->mPaddingTop:I

    iget v3, p0, Landroid/support/v7/widget/GridLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 896
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 897
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .parameter "widthSpec"
    .parameter "heightSpec"
    .parameter "firstPass"

    .prologue
    .line 900
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, N:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 902
    .local v3, c:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 900
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 903
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v19

    .line 904
    .local v19, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 905
    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 907
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/GridLayout;->orientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 908
    .local v16, horizontal:Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 909
    .local v21, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v4, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 910
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 911
    .local v20, span:Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 912
    .local v14, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 913
    .local v18, locations:[I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 914
    .local v15, cellSize:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 915
    .local v6, viewSize:I
    if-eqz v16, :cond_6

    .line 916
    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 907
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v20           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 908
    .restart local v16       #horizontal:Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 911
    .restart local v20       #span:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v21       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_4

    .line 918
    .restart local v6       #viewSize:I
    .restart local v14       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v15       #cellSize:I
    .restart local v18       #locations:[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 923
    .end local v3           #c:Landroid/view/View;
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v19           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v20           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .parameter "a"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 642
    array-length v0, p0

    .line 643
    .local v0, length:I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 644
    return-void
.end method

.method private static setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter "lp"
    .parameter "row"
    .parameter "rowSpan"
    .parameter "col"
    .parameter "colSpan"

    .prologue
    .line 647
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 648
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 649
    return-void
.end method

.method public static spec(I)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"

    .prologue
    .line 2398
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "size"

    .prologue
    .line 2386
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 6
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2359
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "alignment"

    .prologue
    .line 2373
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayout;->orientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 664
    .local v5, horizontal:Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 665
    .local v3, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    iget v0, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 667
    .local v4, count:I
    :goto_2
    const/4 v8, 0x0

    .line 668
    .local v8, major:I
    const/4 v14, 0x0

    .line 669
    .local v14, minor:I
    new-array v13, v4, [I

    .line 671
    .local v13, maxSizes:[I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, N:I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 672
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 674
    .local v7, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 675
    .local v11, majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 676
    .local v9, majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    iget-boolean v12, v11, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 677
    .local v12, majorWasDefined:Z
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v10

    .line 678
    .local v10, majorSpan:I
    if-eqz v12, :cond_0

    .line 679
    iget v8, v9, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 682
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 683
    .local v17, minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 684
    .local v15, minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 685
    .local v18, minorWasDefined:Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/support/v7/widget/GridLayout;->clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I

    move-result v16

    .line 686
    .local v16, minorSpan:I
    if-eqz v18, :cond_1

    .line 687
    iget v14, v15, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 690
    :cond_1
    if-eqz v4, :cond_b

    .line 692
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 693
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/support/v7/widget/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 694
    if-eqz v18, :cond_8

    .line 695
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 663
    .end local v2           #N:I
    .end local v3           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v4           #count:I
    .end local v5           #horizontal:Z
    .end local v6           #i:I
    .end local v7           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v8           #major:I
    .end local v9           #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v13           #maxSizes:[I
    .end local v14           #minor:I
    .end local v15           #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 664
    .restart local v5       #horizontal:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    .line 665
    .restart local v3       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 674
    .restart local v2       #N:I
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v7       #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v8       #major:I
    .restart local v13       #maxSizes:[I
    .restart local v14       #minor:I
    :cond_6
    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_4

    .line 682
    .restart local v9       #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v10       #majorSpan:I
    .restart local v11       #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v12       #majorWasDefined:Z
    :cond_7
    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 697
    .restart local v15       #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v16       #minorSpan:I
    .restart local v17       #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v18       #minorWasDefined:Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 698
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 700
    :cond_9
    const/4 v14, 0x0

    .line 701
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 706
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/support/v7/widget/GridLayout;->procrusteanFill([IIII)V

    .line 709
    :cond_b
    if-eqz v5, :cond_c

    .line 710
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    .line 715
    :goto_7
    add-int v14, v14, v16

    .line 671
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 712
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 717
    .end local v7           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v9           #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v15           #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/GridLayout;->lastLayoutParamsHashCode:I

    .line 718
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 719
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 755
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 760
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 765
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method final getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .parameter "alignment"
    .parameter "horizontal"

    .prologue
    .line 977
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->alignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 746
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->layoutParamsValid:Z

    if-nez v0, :cond_0

    .line 747
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->validateLayoutParams()V

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->layoutParamsValid:Z

    .line 750
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 606
    .local v0, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 609
    .local v1, margin:I
    :goto_0
    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->getDefaultMarginValue(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1           #margin:I
    :cond_0
    return v1

    .line 606
    :cond_1
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 965
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->orientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->useDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "oldVisibility"
    .parameter "newVisibility"

    .prologue
    const/16 v0, 0x8

    .line 861
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 862
    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_1

    .line 863
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 865
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/support/v7/widget/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 831
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/support/v7/widget/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1073
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1074
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1078
    invoke-super {p0, p1}, Landroid/support/v7/widget/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1079
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1080
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 46
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 997
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->checkForLayoutParamsModification()V

    .line 999
    sub-int v35, p4, p2

    .line 1000
    .local v35, targetWidth:I
    sub-int v34, p5, p3

    .line 1002
    .local v34, targetHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v28

    .line 1003
    .local v28, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v30

    .line 1004
    .local v30, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v29

    .line 1005
    .local v29, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v27

    .line 1007
    .local v27, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    sub-int v45, v35, v28

    sub-int v45, v45, v29

    invoke-virtual/range {v44 .. v45}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    sub-int v45, v34, v30

    sub-int v45, v45, v27

    invoke-virtual/range {v44 .. v45}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v20

    .line 1011
    .local v20, hLocations:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v38

    .line 1013
    .local v38, vLocations:[I
    const/16 v22, 0x0

    .local v22, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    .local v3, N:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 1014
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1015
    .local v9, c:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_0

    .line 1013
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v24

    .line 1017
    .local v24, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v24

    iget-object v13, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1018
    .local v13, columnSpec:Landroid/support/v7/widget/GridLayout$Spec;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v33, v0

    .line 1020
    .local v33, rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v12, v13, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1021
    .local v12, colSpan:Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v32, v0

    .line 1023
    .local v32, rowSpan:Landroid/support/v7/widget/GridLayout$Interval;
    iget v0, v12, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    move/from16 v44, v0

    aget v40, v20, v44

    .line 1024
    .local v40, x1:I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    move/from16 v44, v0

    aget v42, v38, v44

    .line 1026
    .local v42, y1:I
    iget v0, v12, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    move/from16 v44, v0

    aget v41, v20, v44

    .line 1027
    .local v41, x2:I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    move/from16 v44, v0

    aget v43, v38, v44

    .line 1029
    .local v43, y2:I
    sub-int v11, v41, v40

    .line 1030
    .local v11, cellWidth:I
    sub-int v10, v43, v42

    .line 1032
    .local v10, cellHeight:I
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v9, v1}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v26

    .line 1033
    .local v26, pWidth:I
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v9, v1}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v25

    .line 1035
    .local v25, pHeight:I
    iget-object v0, v13, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v19

    .line 1036
    .local v19, hAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v37

    .line 1038
    .local v37, vAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1039
    .local v7, boundsX:Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1042
    .local v8, boundsY:Landroid/support/v7/widget/GridLayout$Bounds;
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v44

    sub-int v44, v11, v44

    move-object/from16 v0, v19

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v17

    .line 1043
    .local v17, gravityOffsetX:I
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v44

    sub-int v44, v10, v44

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v18

    .line 1045
    .local v18, gravityOffsetY:I
    const/16 v44, 0x1

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    .line 1046
    .local v23, leftMargin:I
    const/16 v44, 0x0

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    .line 1047
    .local v36, topMargin:I
    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v31

    .line 1048
    .local v31, rightMargin:I
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    .line 1051
    .local v6, bottomMargin:I
    add-int v44, v23, v26

    add-int v44, v44, v31

    move-object/from16 v0, v19

    move/from16 v1, v44

    invoke-virtual {v7, v9, v0, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;I)I

    move-result v4

    .line 1052
    .local v4, alignmentOffsetX:I
    add-int v44, v36, v25

    add-int v44, v44, v6

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v8, v9, v0, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;I)I

    move-result v5

    .line 1054
    .local v5, alignmentOffsetY:I
    sub-int v44, v11, v23

    sub-int v44, v44, v31

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v44

    invoke-virtual {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v39

    .line 1055
    .local v39, width:I
    sub-int v44, v10, v36

    sub-int v44, v44, v6

    move-object/from16 v0, v37

    move/from16 v1, v25

    move/from16 v2, v44

    invoke-virtual {v0, v9, v1, v2}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v21

    .line 1057
    .local v21, height:I
    add-int v44, v40, v17

    add-int v16, v44, v4

    .line 1059
    .local v16, dx:I
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtl(Landroid/view/View;)Z

    move-result v44

    if-nez v44, :cond_3

    add-int v44, v28, v23

    add-int v14, v44, v16

    .line 1061
    .local v14, cx:I
    :goto_2
    add-int v44, v30, v42

    add-int v44, v44, v18

    add-int v44, v44, v5

    add-int v15, v44, v36

    .line 1063
    .local v15, cy:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    move/from16 v0, v39

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-eq v0, v1, :cond_2

    .line 1064
    :cond_1
    const/high16 v44, 0x4000

    move/from16 v0, v39

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    const/high16 v45, 0x4000

    move/from16 v0, v21

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1066
    :cond_2
    add-int v44, v14, v39

    add-int v45, v15, v21

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1059
    .end local v14           #cx:I
    .end local v15           #cy:I
    :cond_3
    sub-int v44, v35, v39

    sub-int v44, v44, v29

    sub-int v44, v44, v31

    sub-int v14, v44, v16

    goto :goto_2

    .line 1068
    .end local v4           #alignmentOffsetX:I
    .end local v5           #alignmentOffsetY:I
    .end local v6           #bottomMargin:I
    .end local v7           #boundsX:Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v8           #boundsY:Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v9           #c:Landroid/view/View;
    .end local v10           #cellHeight:I
    .end local v11           #cellWidth:I
    .end local v12           #colSpan:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v13           #columnSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v16           #dx:I
    .end local v17           #gravityOffsetX:I
    .end local v18           #gravityOffsetY:I
    .end local v19           #hAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v21           #height:I
    .end local v23           #leftMargin:I
    .end local v24           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v25           #pHeight:I
    .end local v26           #pWidth:I
    .end local v31           #rightMargin:I
    .end local v32           #rowSpan:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v33           #rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v36           #topMargin:I
    .end local v37           #vAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v39           #width:I
    .end local v40           #x1:I
    .end local v41           #x2:I
    .end local v42           #y1:I
    .end local v43           #y2:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 927
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->checkForLayoutParamsModification()V

    .line 931
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 933
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 938
    iget v6, p0, Landroid/support/v7/widget/GridLayout;->orientation:I

    if-nez v6, :cond_0

    .line 939
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .line 940
    .local v5, width:I
    invoke-direct {p0, p1, p2, v8}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 941
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 948
    .local v1, height:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    .line 949
    .local v0, hPadding:I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 951
    .local v4, vPadding:I
    add-int v6, v0, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 952
    .local v3, measuredWidth:I
    add-int v6, v4, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 954
    .local v2, measuredHeight:I
    invoke-static {v3, p1, v8}, Landroid/support/v7/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v6

    invoke-static {v2, p2, v8}, Landroid/support/v7/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 957
    return-void

    .line 943
    .end local v0           #hPadding:I
    .end local v1           #height:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    .end local v4           #vPadding:I
    .end local v5           #width:I
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, p2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 944
    .restart local v1       #height:I
    invoke-direct {p0, p1, p2, v8}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 945
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .restart local v5       #width:I
    goto :goto_0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    .line 741
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 743
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 840
    invoke-super {p0, p1}, Landroid/support/v7/widget/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 841
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 842
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 849
    invoke-super {p0, p1}, Landroid/support/v7/widget/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 850
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 851
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 972
    invoke-super {p0}, Landroid/support/v7/widget/ViewGroup;->requestLayout()V

    .line 973
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 974
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter "alignmentMode"

    .prologue
    .line 463
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->alignmentMode:I

    .line 464
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 465
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 382
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 384
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter "columnOrderPreserved"

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->horizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 535
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 536
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 537
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->orientation:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->orientation:I

    .line 315
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 318
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "rowCount"

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 349
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 351
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter "rowOrderPreserved"

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->verticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 499
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 500
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 501
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter "useDefaultMargins"

    .prologue
    .line 427
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->useDefaultMargins:Z

    .line 428
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 429
    return-void
.end method
