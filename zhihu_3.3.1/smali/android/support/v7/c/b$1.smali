.class final Landroid/support/v7/c/b$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Landroid/support/v7/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([F)Z
    .locals 2
    .parameter

    .prologue
    .line 941
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b([F)Z
    .locals 2
    .parameter

    .prologue
    .line 948
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c([F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 955
    aget v2, p1, v1

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p1, v1

    const/high16 v3, 0x4214

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p1, v0

    const v3, 0x3f51eb85

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I[F)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 934
    invoke-direct {p0, p2}, Landroid/support/v7/c/b$1;->b([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/c/b$1;->a([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/c/b$1;->c([F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
