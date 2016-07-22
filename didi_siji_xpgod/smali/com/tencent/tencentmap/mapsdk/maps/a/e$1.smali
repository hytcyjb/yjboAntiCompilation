.class final Lcom/tencent/tencentmap/mapsdk/maps/a/e$1;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/t",
        "<+",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
        ">;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/t;

    .end local p1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
