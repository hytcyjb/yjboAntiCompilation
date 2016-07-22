.class final Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)I"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, g1:Ljava/lang/Object;,"TR;"
    .local p2, g2:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/b$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    invoke-interface {v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
