.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/eo;
.super Ljava/lang/Object;
.source "HeatMapTextureCache.java"


# instance fields
.field private a:Ljava/util/Hashtable;
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

.field private b:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    .line 30
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x4b0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 126
    .local v0, removeTex:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 129
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "texName"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 80
    .local v0, toBeDeleteNum:I
    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 82
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 83
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    .local v2, texName:I
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 112
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #texName:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 115
    .end local v1           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 116
    return-void
.end method
