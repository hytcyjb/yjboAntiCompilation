.class final Lcom/tencent/tencentmap/mapsdk/maps/a/e$2;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/e;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
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
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/e$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .end local p1
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/e$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v0

    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
