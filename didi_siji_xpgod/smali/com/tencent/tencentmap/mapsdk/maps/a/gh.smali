.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gh;
.super Landroid/widget/ImageView;
.source "ZoomBtn.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContex"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setClickable(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setClickable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, drBack:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 55
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "bmpNormal"
    .parameter "bmpSelected"

    .prologue
    .line 21
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 22
    .local v2, stateDrawable:Landroid/graphics/drawable/StateListDrawable;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 24
    .local v0, normalDr:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 27
    .local v1, selectedDr:Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 28
    sget-object v3, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gh;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method
