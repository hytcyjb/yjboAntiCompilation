.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ct;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)F
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method
