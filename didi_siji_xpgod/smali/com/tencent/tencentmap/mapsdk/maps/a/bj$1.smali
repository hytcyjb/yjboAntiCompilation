.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;
.super Ljava/lang/Object;
.source "JNIWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)Lcom/tencent/map/lib/gl/JNI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/lib/gl/JNI;->nativeDestroyEngine(J)V

    .line 175
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bj;)V

    .line 177
    :cond_0
    return-void
.end method
