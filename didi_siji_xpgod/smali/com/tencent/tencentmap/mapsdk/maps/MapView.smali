.class public Lcom/tencent/tencentmap/mapsdk/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 20
    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->setClickable(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->isInEditMode()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 34
    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->setClickable(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->isInEditMode()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->setBackgroundColor(I)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->setEnabled(Z)V

    .line 47
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 48
    return-void
.end method


# virtual methods
.method public final getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    .line 71
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d()V

    .line 83
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->onRestart()V

    .line 89
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a()V

    .line 77
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b()V

    .line 58
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c()V

    .line 64
    :cond_0
    return-void
.end method

.method public setOnTop(Z)V
    .locals 1
    .parameter "isOnTop"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setOnTop(Z)V

    .line 93
    return-void
.end method
