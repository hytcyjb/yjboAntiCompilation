.class public final Lcom/tencent/map/lib/gl/b;
.super Ljava/lang/Object;
.source "GLTextureCache.java"


# instance fields
.field private a:I

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/co",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/map/lib/gl/b;->a:I

    .line 41
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/co;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/lib/gl/b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/co;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    .line 43
    invoke-direct {p0}, Lcom/tencent/map/lib/gl/b;->b()V

    .line 44
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    if-nez v1, :cond_0

    .line 51
    iget v1, p0, Lcom/tencent/map/lib/gl/b;->a:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    .line 55
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 95
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    .end local v0           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 121
    iget-object v0, p0, Lcom/tencent/map/lib/gl/b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/co;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b()V

    .line 122
    iget-object v0, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 4
    .parameter "id"
    .parameter "texName"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    iget v3, p0, Lcom/tencent/map/lib/gl/b;->a:I

    if-ne v2, v3, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/tencent/map/lib/gl/b;->b()V

    .line 67
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/co;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, removeId:Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    .local v1, removeTex:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->capacity()I

    move-result v2

    iget v3, p0, Lcom/tencent/map/lib/gl/b;->a:I

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 80
    .end local v0           #removeId:Ljava/lang/String;
    .end local v1           #removeTex:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/co;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/tencent/map/lib/gl/b;->c:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 109
    .local v0, toBeDeleteNum:I
    if-lez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 112
    iget-object v1, p0, Lcom/tencent/map/lib/gl/b;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0           #toBeDeleteNum:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
