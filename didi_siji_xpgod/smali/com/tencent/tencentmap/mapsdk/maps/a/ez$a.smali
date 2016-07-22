.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:[B

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a:[B

    .line 55
    const/16 v1, 0xa

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->c:I

    .line 56
    const-wide v1, 0x402aaaaaa0000000L

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 58
    .local v0, hashTableCapacity:I
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;I)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->b:Ljava/util/LinkedHashMap;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a:[B

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 88
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a<TK;TV;>;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a:[B

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->a:[B

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
