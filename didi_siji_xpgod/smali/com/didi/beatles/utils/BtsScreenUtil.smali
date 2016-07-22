.class public Lcom/didi/beatles/utils/BtsScreenUtil;
.super Ljava/lang/Object;
.source "BtsScreenUtil.java"


# static fields
.field public static final SCREEN_ORIENTATION_HORIZONTAL:I = 0x2

.field public static final SCREEN_ORIENTATION_VERTICAL:I = 0x1

.field private static volatile params:Lcom/didi/beatles/utils/BtsScreenUtil;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public densityDpi:I

.field public fontScale:F

.field public scale:F

.field public screenHeight:I

.field public screenOrientation:I

.field public screenWidth:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v2, "SystemParams"

    iput-object v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenOrientation:I

    .line 33
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenWidth:I

    .line 36
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenHeight:I

    .line 37
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->densityDpi:I

    .line 38
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    .line 39
    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->fontScale:F

    .line 40
    iget v2, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenHeight:I

    iget v3, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenWidth:I

    if-le v2, v3, :cond_0

    :goto_0
    iput v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenOrientation:I

    .line 42
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 93
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v1

    iget v0, v1, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    .line 94
    .local v0, scale:F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getHeight()I
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v0

    iget v0, v0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenHeight:I

    return v0
.end method

.method public static getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/didi/beatles/utils/BtsScreenUtil;->params:Lcom/didi/beatles/utils/BtsScreenUtil;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/didi/beatles/utils/BtsScreenUtil;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/didi/beatles/utils/BtsScreenUtil;->params:Lcom/didi/beatles/utils/BtsScreenUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/didi/beatles/utils/BtsScreenUtil;

    invoke-direct {v0}, Lcom/didi/beatles/utils/BtsScreenUtil;-><init>()V

    sput-object v0, Lcom/didi/beatles/utils/BtsScreenUtil;->params:Lcom/didi/beatles/utils/BtsScreenUtil;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/didi/beatles/utils/BtsScreenUtil;->params:Lcom/didi/beatles/utils/BtsScreenUtil;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getScale()F
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v0

    iget v0, v0, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    return v0
.end method

.method public static getWidth()I
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v0

    iget v0, v0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenWidth:I

    return v0
.end method

.method public static px2dip(F)I
    .locals 3
    .parameter "pxValue"

    .prologue
    .line 84
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v1

    iget v0, v1, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    .line 85
    .local v0, scale:F
    div-float v1, p0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(F)I
    .locals 3
    .parameter "pxValue"

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/beatles/utils/BtsScreenUtil;->getInstance()Lcom/didi/beatles/utils/BtsScreenUtil;

    move-result-object v1

    iget v0, v1, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    .line 89
    .local v0, scale:F
    div-float v1, p0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemParams:[screenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " densityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/didi/beatles/utils/BtsScreenUtil;->screenOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "horizontal"

    goto :goto_0
.end method
