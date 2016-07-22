.class public Lcom/didi/common/util/WindowUtil;
.super Ljava/lang/Object;
.source "WindowUtil.java"


# static fields
.field private static final AUTO_RESIZE_STRICT_TAG:Ljava/lang/String; = "strict_mode"

.field public static SCALE_RATIO:F = 0.0f

.field public static SCALE_RATIO_HORIZONTAL:F = 0.0f

.field public static SCALE_RATIO_VERTICAL:F = 0.0f

.field private static SCREEN_DENSITY:F = 0.0f

.field public static STATUS_BAR_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UI_DESIGN_LANDSCAPE_SIZE:I = 0x438

.field private static final UI_DESIGN_PORTRAIT_SIZE:I = 0x708

.field public static WINDOW_ROTATION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/didi/common/util/WindowUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/util/WindowUtil;->TAG:Ljava/lang/String;

    .line 49
    const/high16 v0, 0x3f80

    sput v0, Lcom/didi/common/util/WindowUtil;->SCREEN_DENSITY:F

    .line 51
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->computeScaleRatio()V

    .line 52
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->computeScreenDensity()V

    .line 53
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->computeWindowRotation()V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDimen(I)F
    .locals 1
    .parameter "resId"

    .prologue
    .line 783
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static computeScaleRatio()V
    .locals 8

    .prologue
    const/16 v6, 0x708

    const/16 v0, 0x438

    .line 865
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v5

    .line 866
    .local v5, windowWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v4

    .line 868
    .local v4, windowHeight:I
    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    if-le v5, v4, :cond_2

    move v1, v6

    .line 871
    .local v1, designedWidth:I
    :goto_1
    if-le v5, v4, :cond_3

    .line 872
    .local v0, designedHeight:I
    :goto_2
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    sput v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    .line 873
    int-to-float v6, v4

    int-to-float v7, v0

    div-float/2addr v6, v7

    sput v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    .line 875
    const v2, 0x3fd55555

    .line 876
    .local v2, ratioDesigned:F
    int-to-float v6, v4

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 878
    .local v3, ratioDevice:F
    cmpl-float v6, v3, v2

    if-ltz v6, :cond_4

    sget v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    :goto_3
    sput v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    goto :goto_0

    .end local v0           #designedHeight:I
    .end local v1           #designedWidth:I
    .end local v2           #ratioDesigned:F
    .end local v3           #ratioDevice:F
    :cond_2
    move v1, v0

    .line 870
    goto :goto_1

    .restart local v1       #designedWidth:I
    :cond_3
    move v0, v6

    .line 871
    goto :goto_2

    .line 878
    .restart local v0       #designedHeight:I
    .restart local v2       #ratioDesigned:F
    .restart local v3       #ratioDevice:F
    :cond_4
    sget v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    goto :goto_3
.end method

.method public static computeScaledDimen(IF)F
    .locals 1
    .parameter "resId"
    .parameter "ratio"

    .prologue
    .line 792
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->computeDimen(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static computeScaledDimenByBalancedRatio(I)F
    .locals 1
    .parameter "resId"

    .prologue
    .line 847
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    invoke-static {p0, v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimen(IF)F

    move-result v0

    return v0
.end method

.method public static computeScaledDimenByHorizontalRatio(I)F
    .locals 1
    .parameter "resId"

    .prologue
    .line 836
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    invoke-static {p0, v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimen(IF)F

    move-result v0

    return v0
.end method

.method public static computeScaledDimenByVerticalRatio(I)F
    .locals 1
    .parameter "resId"

    .prologue
    .line 825
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimen(IF)F

    move-result v0

    return v0
.end method

.method public static computeScaledSize(F)I
    .locals 1
    .parameter "size"

    .prologue
    .line 810
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static computeScaledSize(I)I
    .locals 2
    .parameter "size"

    .prologue
    .line 801
    int-to-float v0, p0

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static computeScaledVerticalSize(I)I
    .locals 2
    .parameter "size"

    .prologue
    .line 814
    int-to-float v0, p0

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static computeScreenDensity()V
    .locals 2

    .prologue
    .line 854
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 855
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 856
    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/didi/common/util/WindowUtil;->SCREEN_DENSITY:F

    goto :goto_0
.end method

.method public static computeWindowRotation()V
    .locals 3

    .prologue
    .line 968
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 969
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcom/didi/common/util/WindowUtil;->WINDOW_ROTATION:I

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeWindowRotation rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/didi/common/util/WindowUtil;->WINDOW_ROTATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public static dip2px(F)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 897
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 898
    .local v0, f:F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getHeight(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 726
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 727
    const/4 v1, 0x0

    .line 728
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public static getHorizontalScaledDimen(I)F
    .locals 2
    .parameter "heightResId"

    .prologue
    .line 737
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getMarginTop(Landroid/view/View;)F
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 982
    const/4 v2, 0x0

    .line 984
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    if-nez v2, :cond_0

    move v3, v4

    .line 990
    :goto_0
    return v3

    .line 985
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 986
    goto :goto_0

    .line 990
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v3, v3

    goto :goto_0
.end method

.method public static getScaleRatio()F
    .locals 1

    .prologue
    .line 978
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 7

    .prologue
    .line 936
    sget v6, Lcom/didi/common/util/WindowUtil;->STATUS_BAR_HEIGHT:I

    if-eqz v6, :cond_0

    .line 937
    sget v6, Lcom/didi/common/util/WindowUtil;->STATUS_BAR_HEIGHT:I

    .line 952
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v2, field:Ljava/lang/reflect/Field;
    .local v4, statusBarHeight:I
    .local v5, x:I
    :goto_0
    return v6

    .line 938
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #statusBarHeight:I
    .end local v5           #x:I
    :cond_0
    const/4 v0, 0x0

    .line 939
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 940
    .local v3, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 941
    .restart local v2       #field:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .restart local v5       #x:I
    const/4 v4, 0x0

    .line 943
    .restart local v4       #statusBarHeight:I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 945
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 947
    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getDimensionPixelSize(I)I

    move-result v4

    .line 948
    sput v4, Lcom/didi/common/util/WindowUtil;->STATUS_BAR_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v3           #obj:Ljava/lang/Object;
    :goto_1
    sget v6, Lcom/didi/common/util/WindowUtil;->STATUS_BAR_HEIGHT:I

    goto :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 962
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 963
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 964
    iget v1, v0, Landroid/graphics/Rect;->top:I

    return v1
.end method

.method public static getVerticalScaledDimen(I)F
    .locals 2
    .parameter "heightResId"

    .prologue
    .line 746
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getWidth(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 713
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 714
    const/4 v1, 0x0

    .line 715
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public static getWindowHeight()I
    .locals 2

    .prologue
    .line 768
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 769
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 770
    if-nez v0, :cond_0

    .line 771
    const/4 v1, 0x0

    .line 772
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static getWindowRotation()I
    .locals 1

    .prologue
    .line 974
    sget v0, Lcom/didi/common/util/WindowUtil;->WINDOW_ROTATION:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 2

    .prologue
    .line 755
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 756
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 757
    if-nez v0, :cond_0

    .line 758
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static intersects(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 920
    if-nez p0, :cond_0

    .line 921
    const/4 v2, 0x0

    .line 927
    :goto_0
    return v2

    .line 922
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 923
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 924
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 925
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 927
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    goto :goto_0
.end method

.method public static isLandscape()Z
    .locals 2

    .prologue
    .line 887
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStrictMode(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, strictMode:Z
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, tag:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 381
    const/4 v3, 0x0

    .line 385
    :goto_0
    return v3

    .line 382
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, tagString:Ljava/lang/String;
    const-string v3, "strict_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const/4 v0, 0x1

    :cond_1
    move v3, v0

    .line 385
    goto :goto_0
.end method

.method public static px2dip(F)I
    .locals 2
    .parameter "px"

    .prologue
    .line 908
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 909
    .local v0, f:F
    div-float v1, p0, v0

    float-to-int v1, v1

    return v1
.end method

.method public static remargin(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 208
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->remargin(Landroid/view/View;FF)V

    .line 209
    return-void
.end method

.method public static remargin(Landroid/view/View;FF)V
    .locals 8
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    .line 218
    const/4 v4, 0x0

    .line 220
    .local v4, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    if-nez v4, :cond_0

    .line 232
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 226
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_0
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v3, v7

    .line 227
    .local v3, left:I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-int v6, v7

    .line 228
    .local v6, top:I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v5, v7

    .line 229
    .local v5, right:I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-int v1, v7

    .line 230
    .local v1, bottom:I
    invoke-virtual {v4, v3, v6, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 231
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static repadding(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 183
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->repadding(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static repadding(Landroid/view/View;FF)Z
    .locals 4
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resize(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public static resize(Landroid/view/View;FF)Z
    .locals 1
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 100
    .end local p0
    :goto_0
    return v0

    .line 92
    .restart local p0
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resizeWidthAndHeight(Landroid/view/View;FF)Z

    .line 94
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->repadding(Landroid/view/View;)Z

    .line 96
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->remargin(Landroid/view/View;)V

    .line 98
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 99
    check-cast p0, Landroid/widget/TextView;

    .end local p0
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resizeText(Landroid/widget/TextView;)Z

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeChildrenRecursively(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 277
    if-nez p0, :cond_1

    .line 278
    const/4 v4, 0x0

    .line 289
    :cond_0
    return v4

    .line 280
    :cond_1
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 282
    check-cast v2, Landroid/view/ViewGroup;

    .line 283
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 284
    .local v1, childCount:I
    const/4 v0, 0x0

    .line 285
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 286
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static resizeRecursively(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 74
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private static resizeRecursively(Landroid/view/View;FF)Z
    .locals 7
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    const/4 v5, 0x1

    .line 323
    if-nez p0, :cond_1

    .line 324
    const/4 v5, 0x0

    .line 342
    :cond_0
    :goto_0
    return v5

    .line 326
    :cond_1
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->isStrictMode(Landroid/view/View;)Z

    move-result v4

    .line 328
    .local v4, strictMode:Z
    if-eqz v4, :cond_2

    .line 329
    sget v5, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    sget v6, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    invoke-static {p0, v5, v6}, Lcom/didi/common/util/WindowUtil;->resizeStrictRecursively(Landroid/view/View;FF)Z

    move-result v5

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->shouldIgnore(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;FF)Z

    .line 333
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v2, p0

    .line 335
    check-cast v2, Landroid/view/ViewGroup;

    .line 336
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 337
    .local v1, childCount:I
    const/4 v0, 0x0

    .line 338
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 339
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    invoke-static {v0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;FF)Z

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static resizeRecursivelyWithRespectiveRatio(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 299
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static resizeRecursivelyWithVerticalRatio(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 309
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private static resizeStrictRecursively(Landroid/view/View;FF)Z
    .locals 6
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    const/4 v4, 0x1

    .line 356
    if-nez p0, :cond_1

    .line 357
    const/4 v4, 0x0

    .line 368
    :cond_0
    return v4

    .line 358
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resizeStrictly(Landroid/view/View;FF)Z

    .line 359
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 361
    check-cast v2, Landroid/view/ViewGroup;

    .line 362
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 363
    .local v1, childCount:I
    const/4 v0, 0x0

    .line 364
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 365
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    invoke-static {v0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resizeStrictRecursively(Landroid/view/View;FF)Z

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static resizeStrictly(Landroid/view/View;FF)Z
    .locals 1
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 125
    .end local p0
    :goto_0
    return v0

    .line 117
    .restart local p0
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->resizeWidthAndHeight(Landroid/view/View;FF)Z

    .line 119
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->repadding(Landroid/view/View;FF)Z

    .line 121
    invoke-static {p0, p1, p2}, Lcom/didi/common/util/WindowUtil;->remargin(Landroid/view/View;FF)V

    .line 123
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    check-cast p0, Landroid/widget/TextView;

    .end local p0
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resizeText(Landroid/widget/TextView;)Z

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resizeText(Landroid/widget/TextView;)Z
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    if-nez p0, :cond_0

    .line 253
    :goto_0
    return v4

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, tag:Ljava/lang/Object;
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 245
    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, tagString:Ljava/lang/String;
    const-string v6, "ignoreSize"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 247
    goto :goto_0

    .line 250
    .end local v2           #tagString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 251
    .local v3, textSize:F
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO:F

    .line 252
    .local v0, ratio:F
    mul-float v6, v3, v0

    invoke-virtual {p0, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    move v4, v5

    .line 253
    goto :goto_0
.end method

.method public static resizeWidthAndHeight(Landroid/view/View;FF)Z
    .locals 9
    .parameter "view"
    .parameter "horizontalRatio"
    .parameter "verticalRatio"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v5, 0x1

    .line 147
    if-nez p0, :cond_1

    .line 148
    const/4 v5, 0x0

    .line 173
    :cond_0
    :goto_0
    return v5

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, tag:Ljava/lang/Object;
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 151
    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, tagString:Ljava/lang/String;
    const-string v6, "ignoreSize"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    .end local v3           #tagString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 158
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    .local v4, width:I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    .local v0, height:I
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v8, :cond_3

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v7, :cond_3

    .line 161
    int-to-float v6, v4

    mul-float/2addr v6, p1

    float-to-int v4, v6

    .line 162
    if-le v4, v5, :cond_3

    .line 163
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    :cond_3
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v8, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v7, :cond_4

    .line 166
    int-to-float v6, v0

    mul-float/2addr v6, p2

    float-to-int v0, v6

    .line 167
    if-le v0, v5, :cond_4

    .line 168
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static resizeWithHorizontalRatio(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 263
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static resizeWithRespectiveRatio(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 273
    sget v0, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    sget v1, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    invoke-static {p0, v0, v1}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static setHeight(Landroid/view/View;I)Z
    .locals 4
    .parameter "view"
    .parameter "designedHeightResId"

    .prologue
    const/4 v3, 0x0

    .line 419
    if-nez p0, :cond_0

    move v2, v3

    .line 431
    :goto_0
    return v2

    .line 421
    :cond_0
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    .line 422
    .local v0, designedHeight:F
    const/4 v1, 0x0

    .line 423
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 425
    :cond_1
    if-nez v1, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 427
    :cond_2
    if-nez v1, :cond_3

    move v2, v3

    .line 428
    goto :goto_0

    .line 429
    :cond_3
    sget v2, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_VERTICAL:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 430
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setMargin(Landroid/view/View;IIII)Z
    .locals 5
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    if-nez v2, :cond_0

    move v3, v4

    .line 545
    :goto_0
    return v3

    .line 535
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 536
    goto :goto_0

    .line 540
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 541
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 542
    iput p3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 543
    iput p4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 544
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setMarginBottom(Landroid/view/View;I)Z
    .locals 5
    .parameter "view"
    .parameter "marginBottom"

    .prologue
    const/4 v4, 0x0

    .line 627
    const/4 v2, 0x0

    .line 629
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    if-nez v2, :cond_0

    move v3, v4

    .line 637
    :goto_0
    return v3

    .line 630
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 631
    goto :goto_0

    .line 635
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 636
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setMarginLeft(Landroid/view/View;I)Z
    .locals 5
    .parameter "view"
    .parameter "marginLeft"

    .prologue
    const/4 v4, 0x0

    .line 587
    const/4 v2, 0x0

    .line 589
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    if-nez v2, :cond_0

    move v3, v4

    .line 597
    :goto_0
    return v3

    .line 590
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 591
    goto :goto_0

    .line 595
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 596
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setMarginLeftRes(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 577
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/didi/common/util/WindowUtil;->setMarginLeft(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static setMarginRight(Landroid/view/View;I)Z
    .locals 5
    .parameter "view"
    .parameter "marginRight"

    .prologue
    const/4 v4, 0x0

    .line 607
    const/4 v2, 0x0

    .line 609
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    if-nez v2, :cond_0

    move v3, v4

    .line 617
    :goto_0
    return v3

    .line 610
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 611
    goto :goto_0

    .line 615
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 616
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setMarginTop(Landroid/view/View;I)Z
    .locals 5
    .parameter "view"
    .parameter "marginTop"

    .prologue
    const/4 v4, 0x0

    .line 555
    const/4 v2, 0x0

    .line 557
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    if-nez v2, :cond_0

    move v3, v4

    .line 565
    :goto_0
    return v3

    .line 558
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    .line 559
    goto :goto_0

    .line 563
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 564
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setPadding(Landroid/view/View;IIII)Z
    .locals 1
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 647
    if-nez p0, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    .line 649
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 650
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setPaddingBottom(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "paddingBottom"

    .prologue
    .line 699
    if-nez p0, :cond_0

    .line 700
    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    .line 701
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 702
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setPaddingLeft(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "paddingLeft"

    .prologue
    .line 673
    if-nez p0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 676
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setPaddingRight(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "paddingRight"

    .prologue
    .line 686
    if-nez p0, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    .line 688
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 689
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setPaddingTop(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "top"

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    .line 662
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 663
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSize(Landroid/view/View;II)Z
    .locals 4
    .parameter "view"
    .parameter "designedWidthResId"
    .parameter "designedHeightResId"

    .prologue
    .line 445
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v1

    .line 446
    .local v1, designedWidth:F
    invoke-static {p2}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    .line 447
    .local v0, designedHeight:F
    const/4 v2, 0x0

    .line 448
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 450
    :cond_0
    if-nez v2, :cond_1

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 452
    :cond_1
    if-nez v2, :cond_2

    .line 453
    const/4 v3, 0x0

    .line 457
    :goto_0
    return v3

    .line 454
    :cond_2
    sget v3, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 455
    sget v3, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 456
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static setTextSize(Landroid/widget/TextView;I)Z
    .locals 4
    .parameter "view"
    .parameter "designedTextSizeResId"

    .prologue
    const/4 v2, 0x0

    .line 513
    if-nez p0, :cond_0

    .line 518
    :goto_0
    return v2

    .line 515
    :cond_0
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    .line 516
    .local v0, designedSize:F
    sget v3, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    mul-float v1, v0, v3

    .line 517
    .local v1, size:F
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 518
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setViewHeight(Landroid/view/View;I)Z
    .locals 2
    .parameter "view"
    .parameter "height"

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 473
    :cond_0
    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 475
    :cond_1
    if-nez v0, :cond_2

    .line 476
    const/4 v1, 0x0

    .line 479
    :goto_0
    return v1

    .line 477
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 478
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setViewSize(Landroid/view/View;II)Z
    .locals 2
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 494
    :cond_0
    if-nez v0, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 496
    :cond_1
    if-nez v0, :cond_2

    .line 497
    const/4 v1, 0x0

    .line 501
    :goto_0
    return v1

    .line 498
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 499
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "designedWidthResId"

    .prologue
    .line 397
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getDimension(I)F

    move-result v0

    .line 398
    .local v0, designedWidth:F
    const/4 v1, 0x0

    .line 399
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 401
    :cond_0
    if-nez v1, :cond_1

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 403
    :cond_1
    if-nez v1, :cond_2

    .line 404
    const/4 v2, 0x0

    .line 407
    :goto_0
    return v2

    .line 405
    :cond_2
    sget v2, Lcom/didi/common/util/WindowUtil;->SCALE_RATIO_HORIZONTAL:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 406
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static shouldIgnore(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, tag:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, tagString:Ljava/lang/String;
    const-string v2, "ignore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 134
    .end local v1           #tagString:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
