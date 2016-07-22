.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
.super Ljava/lang/Object;
.source "TrafficEntity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/lib/basemap/traffic/TrafficListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/tencentmap/mapsdk/maps/a/cl;Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;)V
    .locals 1
    .parameter "context"
    .parameter "downloadExecutor"
    .parameter "terminator"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a:Z

    .line 48
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 49
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V

    .line 51
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a:Z

    .line 82
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a()V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    monitor-exit v1

    return-void

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3
    .parameter "cityNames"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a([Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/at;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a:Z

    .line 66
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->a()V

    .line 100
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a:Z

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return v7

    .line 137
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 138
    .local v6, objs:[Ljava/lang/Object;
    aget-object v1, v6, v7

    check-cast v1, [B

    .line 140
    .local v1, data:[B
    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, cityName:Ljava/lang/String;
    array-length v2, v1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([BIZLjava/lang/String;Z)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage MSG_UPDATE_DATA result=-1 time:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    aget-object v0, v6, v8

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage MSG_UPDATE_DATA success time:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    aget-object v0, v6, v8

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 150
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    .end local v1           #data:[B
    .end local v4           #cityName:Ljava/lang/String;
    .end local v6           #objs:[Ljava/lang/Object;
    :pswitch_1
    const-string v0, "handleMessage MSG_CLOSE"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;->a()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
