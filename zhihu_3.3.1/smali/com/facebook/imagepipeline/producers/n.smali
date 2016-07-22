.class public Lcom/facebook/imagepipeline/producers/n;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/n$a;
    }
.end annotation

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
.field private final a:Lcom/facebook/imagepipeline/c/e;

.field private final b:Lcom/facebook/imagepipeline/c/e;

.field private final c:Lcom/facebook/imagepipeline/c/f;

.field private final d:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n;->a:Lcom/facebook/imagepipeline/c/e;

    .line 61
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n;->b:Lcom/facebook/imagepipeline/c/e;

    .line 62
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n;->c:Lcom/facebook/imagepipeline/c/f;

    .line 63
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n;->d:Lcom/facebook/imagepipeline/producers/ag;

    .line 64
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/n;->e:Z

    .line 65
    return-void
.end method

.method static a(Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/aj;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cached_value_found"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ah;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 136
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n;->d:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    new-instance v0, Lcom/facebook/imagepipeline/producers/n$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/n$2;-><init>(Lcom/facebook/imagepipeline/producers/n;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/n;->e:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 8
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
    .line 70
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-direct {p0, p1, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 129
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v2

    .line 77
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v1, "DiskCacheProducer"

    invoke-interface {v2, v3, v1}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n;->c:Lcom/facebook/imagepipeline/c/f;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;

    move-result-object v6

    .line 82
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    if-ne v0, v1, :cond_1

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/n;->b:Lcom/facebook/imagepipeline/c/e;

    .line 85
    :goto_1
    new-instance v0, Lcom/facebook/imagepipeline/producers/n$1;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/n$1;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 124
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 126
    invoke-virtual {v5, v6, v1}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/d;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v0}, Lbolts/d;->a(Lbolts/c;)Lbolts/d;

    .line 128
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/n;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ah;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/n;->a:Lcom/facebook/imagepipeline/c/e;

    goto :goto_1
.end method
