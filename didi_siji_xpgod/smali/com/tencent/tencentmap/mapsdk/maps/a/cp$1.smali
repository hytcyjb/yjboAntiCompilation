.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    invoke-static {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
