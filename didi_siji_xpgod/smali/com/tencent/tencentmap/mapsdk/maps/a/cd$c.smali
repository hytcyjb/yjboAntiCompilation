.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
.source "TrafficDataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tencentmap/mapsdk/maps/a/cp",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V

    return-void
.end method

.method private varargs a([Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 596
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 597
    :cond_0
    const-string v1, "updateTrafficData params failure"

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 617
    :goto_0
    return-object v4

    .line 603
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    monitor-enter v2

    .line 611
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, p1, v1

    if-eqz v1, :cond_2

    .line 612
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTrafficData exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 610
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    monitor-enter v2

    .line 611
    const/4 v1, 0x0

    :try_start_3
    aget-object v1, p1, v1

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 609
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    .line 610
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    monitor-enter v2

    .line 611
    const/4 v3, 0x0

    :try_start_4
    aget-object v3, p1, v3

    if-eqz v3, :cond_4

    .line 612
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 615
    throw v1

    .line 610
    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;

    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a([Lcom/tencent/tencentmap/mapsdk/maps/a/cd$b;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a()V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b()V

    return-void
.end method
