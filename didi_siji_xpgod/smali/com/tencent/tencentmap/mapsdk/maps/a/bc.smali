.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bc;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
.source "ActionList.java"


# instance fields
.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bb;>;"
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;->k:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)Z
    .locals 3
    .parameter "executor"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 32
    .local v0, firstAction:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)Z

    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c()V

    .line 36
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    goto :goto_0
.end method
