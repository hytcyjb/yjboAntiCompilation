.class final Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;
.super Ljava/lang/Object;
.source "ImmutableStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/w;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w$a<TU;>;"
    .local p1, stack:Lcom/tencent/tencentmap/mapsdk/maps/a/w;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    .line 61
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w$a<TU;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w$a<TU;>;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, result:Ljava/lang/Object;,"TU;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    .line 72
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 77
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/w$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/w$a<TU;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
