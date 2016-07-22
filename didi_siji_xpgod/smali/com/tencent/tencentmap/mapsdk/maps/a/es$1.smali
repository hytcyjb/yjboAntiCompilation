.class final Lcom/tencent/tencentmap/mapsdk/maps/a/es$1;
.super Ljava/lang/Object;
.source "HeatTile.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter "alph"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/es$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-static {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;F)F

    .line 59
    return-void
.end method

.method public final a(FF)V
    .locals 0
    .parameter "scalex"
    .parameter "scaleY"

    .prologue
    .line 41
    return-void
.end method

.method public final a(FFFF)V
    .locals 0
    .parameter "angle"
    .parameter "fpivotx"
    .parameter "fpivoty"
    .parameter "fpivotz"

    .prologue
    .line 48
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 54
    return-void
.end method
