.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$3;
.super Ljava/lang/Object;
.source "VectorMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 232
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    if-eq p1, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    goto :goto_0
.end method
