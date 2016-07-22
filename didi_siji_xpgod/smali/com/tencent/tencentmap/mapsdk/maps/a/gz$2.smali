.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/hi;

.field final synthetic b:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gz;Lcom/tencent/tencentmap/mapsdk/maps/a/hi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7313
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz.2;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hi;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 7318
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz.2;"
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7327
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz.2;"
    .local p1, args:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hi;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hi;->a(Ljava/lang/Object;)V

    .line 7328
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 7322
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/gz$2;,"Lcom/tencent/tencentmap/mapsdk/maps/a/gz.2;"
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hh;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
