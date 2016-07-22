.class public Landroid/support/v7/widget/ao;
.super Landroid/content/res/Resources;
.source "TintResources.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 34
    iput-object p1, p0, Landroid/support/v7/widget/ao;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;Landroid/support/v7/widget/ao;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
