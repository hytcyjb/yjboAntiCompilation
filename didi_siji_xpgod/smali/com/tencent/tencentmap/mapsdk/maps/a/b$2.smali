.class final Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/b;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
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
    .line 62
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .end local p1
    check-cast p2, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .end local p2
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method
