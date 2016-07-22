.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
.super Ljava/lang/Object;
.source "MapEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/by;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z


# direct methods
.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I
    .locals 1
    .parameter

    .prologue
    .line 1184
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I
    .locals 1
    .parameter

    .prologue
    .line 1189
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->d:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Lcom/tencent/tencentmap/mapsdk/maps/a/by;
    .locals 1
    .parameter

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/by;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Lcom/tencent/tencentmap/mapsdk/maps/a/ck;
    .locals 1
    .parameter

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 1237
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    monitor-exit p0

    return-void

    .line 1237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->g:Z

    return v0
.end method
