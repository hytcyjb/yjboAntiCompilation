.class final Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;
.super Landroid/os/Handler;
.source "TrafficDataUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V
    .locals 1
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b:I

    .line 679
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 690
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b:I

    .line 691
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 698
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 699
    const v0, 0x2bf20

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I

    .line 705
    :goto_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c()V

    const/4 v1, 0x0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 701
    :cond_0
    const v0, 0xea60

    :try_start_1
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I

    .line 702
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 712
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :cond_0
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cd$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cd;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cd;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/cd;)V

    .line 684
    return-void
.end method
