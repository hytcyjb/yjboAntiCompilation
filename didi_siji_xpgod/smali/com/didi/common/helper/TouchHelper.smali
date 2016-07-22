.class public Lcom/didi/common/helper/TouchHelper;
.super Ljava/lang/Object;
.source "TouchHelper.java"


# static fields
.field private static final configuration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledMaximumFlingVelocity()F
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getScaledMinimumFlingVelocity()F
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getScaledOverflingDistance()F
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getScaledOverscrollDistance()F
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getTouchSlop()F
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/didi/common/helper/TouchHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
