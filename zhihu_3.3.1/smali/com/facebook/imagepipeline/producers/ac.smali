.class public Lcom/facebook/imagepipeline/producers/ac;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/w;

.field private final b:Lcom/facebook/imagepipeline/memory/e;

.field private final c:Lcom/facebook/imagepipeline/producers/ad;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/memory/e;Lcom/facebook/imagepipeline/producers/ad;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ac;->a:Lcom/facebook/imagepipeline/memory/w;

    .line 59
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ac;->b:Lcom/facebook/imagepipeline/memory/e;

    .line 60
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    .line 61
    return-void
.end method

.method private static a(II)F
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 118
    if-lez p1, :cond_0

    .line 119
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    neg-int v1, p0

    int-to-double v2, v1

    const-wide v4, 0x40e86a0000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/r;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ad;->a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/memory/y;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/ac;->b(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->f()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 142
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/r;->a(J)V

    .line 143
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/memory/y;ZLcom/facebook/imagepipeline/producers/j;)V

    .line 147
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/memory/y;ZLcom/facebook/imagepipeline/producers/j;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/y;",
            "Z",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/y;->c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v3

    .line 164
    const/4 v2, 0x0

    .line 166
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/f/e;

    invoke-direct {v1, v3}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/f/e;->k()V

    .line 168
    invoke-interface {p3, v1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    invoke-static {v1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 173
    return-void

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/f/e;->d(Lcom/facebook/imagepipeline/f/e;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0

    .line 170
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/r;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4
    .parameter

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/j;->b()V

    .line 185
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    if-lez p3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->a:Lcom/facebook/imagepipeline/memory/w;

    invoke-interface {v0, p3}, Lcom/facebook/imagepipeline/memory/w;->b(I)Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    move-object v1, v0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->b:Lcom/facebook/imagepipeline/memory/e;

    const/16 v2, 0x4000

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/memory/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 101
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    .line 102
    if-lez v2, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/memory/y;->write([BII)V

    .line 104
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/memory/y;Lcom/facebook/imagepipeline/producers/r;)V

    .line 105
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/y;->b()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/ac;->a(II)F

    move-result v2

    .line 106
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/j;->b(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/ac;->b:Lcom/facebook/imagepipeline/memory/e;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/memory/e;->a(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/y;->close()V

    throw v2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->a:Lcom/facebook/imagepipeline/memory/w;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/w;->b()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/y;->b()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/facebook/imagepipeline/producers/ad;->b(Lcom/facebook/imagepipeline/producers/r;I)V

    .line 110
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/producers/ac;->b(Lcom/facebook/imagepipeline/memory/y;Lcom/facebook/imagepipeline/producers/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ac;->b:Lcom/facebook/imagepipeline/memory/e;

    invoke-interface {v2, v0}, Lcom/facebook/imagepipeline/memory/e;->a(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/y;->close()V

    .line 115
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 178
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/memory/y;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/y;->b()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/ac;->a(Lcom/facebook/imagepipeline/memory/y;ZLcom/facebook/imagepipeline/producers/j;)V

    .line 156
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/producers/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Lcom/facebook/imagepipeline/producers/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/ad;->a(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ad;->b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)Lcom/facebook/imagepipeline/producers/r;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ac;->c:Lcom/facebook/imagepipeline/producers/ad;

    new-instance v2, Lcom/facebook/imagepipeline/producers/ac$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/producers/ac$1;-><init>(Lcom/facebook/imagepipeline/producers/ac;Lcom/facebook/imagepipeline/producers/r;)V

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/ad;->a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/ad$a;)V

    .line 85
    return-void
.end method
