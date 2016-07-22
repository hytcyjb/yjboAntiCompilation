.class public Lcom/facebook/imagepipeline/a/a/b;
.super Lcom/facebook/imagepipeline/producers/c;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/c",
        "<",
        "Lcom/facebook/imagepipeline/a/a/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/s;

.field private b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/s;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/c;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b;->a:Lcom/squareup/okhttp/s;

    .line 68
    invoke-virtual {p1}, Lcom/squareup/okhttp/s;->s()Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/a/a/b;->b:Ljava/util/concurrent/Executor;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/a/a/b;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/a/a/b;Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/squareup/okhttp/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ad$a;->a()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/ad$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)Lcom/facebook/imagepipeline/a/a/b$a;
    .locals 1
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
            ")",
            "Lcom/facebook/imagepipeline/a/a/b$a;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b$a;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    return-object v0
.end method

.method public synthetic a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->b(Lcom/facebook/imagepipeline/a/a/b$a;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/a/a/b$a;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    .line 142
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/a/a/b$a;->e()Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/squareup/okhttp/t$a;

    invoke-direct {v1}, Lcom/squareup/okhttp/t$a;-><init>()V

    new-instance v2, Lcom/squareup/okhttp/d$a;

    invoke-direct {v2}, Lcom/squareup/okhttp/d$a;-><init>()V

    .line 83
    invoke-virtual {v2}, Lcom/squareup/okhttp/d$a;->b()Lcom/squareup/okhttp/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/d$a;->d()Lcom/squareup/okhttp/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/t$a;->a(Lcom/squareup/okhttp/d;)Lcom/squareup/okhttp/t$a;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/t$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/t$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/squareup/okhttp/t$a;->a()Lcom/squareup/okhttp/t$a;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/squareup/okhttp/t$a;->b()Lcom/squareup/okhttp/t;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b;->a:Lcom/squareup/okhttp/s;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/s;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/e;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/a/a/b$a;->b()Lcom/facebook/imagepipeline/producers/ah;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/a/a/b$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/a/a/b$1;-><init>(Lcom/facebook/imagepipeline/a/a/b;Lcom/squareup/okhttp/e;)V

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 105
    new-instance v1, Lcom/facebook/imagepipeline/a/a/b$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/facebook/imagepipeline/a/a/b$2;-><init>(Lcom/facebook/imagepipeline/a/a/b;Lcom/facebook/imagepipeline/a/a/b$a;Lcom/squareup/okhttp/e;Lcom/facebook/imagepipeline/producers/ad$a;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/f;)V

    .line 137
    return-void
.end method

.method public bridge synthetic a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/producers/ad$a;)V

    return-void
.end method

.method public synthetic b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)Lcom/facebook/imagepipeline/producers/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)Lcom/facebook/imagepipeline/a/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/a/a/b$a;I)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/a/a/b$a;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 147
    const-string v1, "queue_time"

    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "fetch_time"

    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "total_time"

    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "image_size"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v0
.end method

.method public synthetic b(Lcom/facebook/imagepipeline/producers/r;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;I)V

    return-void
.end method
