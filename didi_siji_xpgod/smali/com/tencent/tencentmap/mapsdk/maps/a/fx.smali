.class public Lcom/tencent/tencentmap/mapsdk/maps/a/fx;
.super Ljava/lang/Object;
.source "OverlayMeta.java"


# instance fields
.field protected E:F

.field protected F:I

.field protected G:I

.field protected H:F

.field protected I:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa3

    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->E:F

    .line 10
    const/16 v0, 0x11

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->F:I

    .line 12
    invoke-static {v1, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->G:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->H:F

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->I:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter "icolor"

    .prologue
    .line 46
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->G:I

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter "boV"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->I:Z

    .line 19
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 54
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->F:I

    .line 55
    return-void
.end method

.method public c(F)V
    .locals 0
    .parameter "index"

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->H:F

    .line 59
    return-void
.end method

.method public final d(F)V
    .locals 0
    .parameter "fwidth"

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->E:F

    .line 39
    return-void
.end method

.method public final q()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fx;->H:F

    return v0
.end method
