.class public Lcom/facebook/imagepipeline/memory/r;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/t;

.field private final b:Lcom/facebook/imagepipeline/memory/u;

.field private final c:Lcom/facebook/imagepipeline/memory/t;

.field private final d:Lcom/facebook/common/memory/b;

.field private final e:Lcom/facebook/imagepipeline/memory/t;

.field private final f:Lcom/facebook/imagepipeline/memory/u;

.field private final g:Lcom/facebook/imagepipeline/memory/t;

.field private final h:Lcom/facebook/imagepipeline/memory/u;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/memory/r$a;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->a(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/memory/f;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    .line 39
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/t;

    .line 41
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->b(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/memory/o;->a()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v0

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/u;

    .line 45
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->c(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    if-nez v0, :cond_2

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/memory/h;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    .line 47
    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->c:Lcom/facebook/imagepipeline/memory/t;

    .line 49
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->d(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/common/memory/b;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Lcom/facebook/common/memory/c;->a()Lcom/facebook/common/memory/c;

    move-result-object v0

    .line 51
    :goto_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/common/memory/b;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->e(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    if-nez v0, :cond_4

    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/memory/i;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    .line 55
    :goto_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->e:Lcom/facebook/imagepipeline/memory/t;

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->f(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    if-nez v0, :cond_5

    .line 58
    invoke-static {}, Lcom/facebook/imagepipeline/memory/o;->a()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v0

    .line 59
    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->f:Lcom/facebook/imagepipeline/memory/u;

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->g(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    if-nez v0, :cond_6

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/memory/g;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    .line 63
    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->g:Lcom/facebook/imagepipeline/memory/t;

    .line 65
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->h(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    if-nez v0, :cond_7

    .line 66
    invoke-static {}, Lcom/facebook/imagepipeline/memory/o;->a()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v0

    .line 67
    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->h:Lcom/facebook/imagepipeline/memory/u;

    .line 68
    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->a(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->b(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->c(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    goto :goto_2

    .line 51
    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->d(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/common/memory/b;

    move-result-object v0

    goto :goto_3

    .line 55
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->e(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    goto :goto_4

    .line 59
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->f(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    goto :goto_5

    .line 63
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->g(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    goto :goto_6

    .line 67
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/r$a;->h(Lcom/facebook/imagepipeline/memory/r$a;)Lcom/facebook/imagepipeline/memory/u;

    move-result-object v0

    goto :goto_7
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/r$a;Lcom/facebook/imagepipeline/memory/r$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/r;-><init>(Lcom/facebook/imagepipeline/memory/r$a;)V

    return-void
.end method

.method public static i()Lcom/facebook/imagepipeline/memory/r$a;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/imagepipeline/memory/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/r$a;-><init>(Lcom/facebook/imagepipeline/memory/r$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/t;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/imagepipeline/memory/t;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/u;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/u;

    return-object v0
.end method

.method public c()Lcom/facebook/common/memory/b;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->d:Lcom/facebook/common/memory/b;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/t;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->e:Lcom/facebook/imagepipeline/memory/t;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/u;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->f:Lcom/facebook/imagepipeline/memory/u;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/memory/t;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->c:Lcom/facebook/imagepipeline/memory/t;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/t;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->g:Lcom/facebook/imagepipeline/memory/t;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/memory/u;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->h:Lcom/facebook/imagepipeline/memory/u;

    return-object v0
.end method
