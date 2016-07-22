.class public Lcom/facebook/imagepipeline/c/j;
.super Ljava/lang/Object;
.source "DefaultCacheKeyFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/f;


# static fields
.field private static a:Lcom/facebook/imagepipeline/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/c/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/imagepipeline/c/j;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/facebook/imagepipeline/c/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/c/j;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/facebook/imagepipeline/c/j;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/j;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/c/j;

    .line 33
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter

    .prologue
    .line 75
    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/c/c;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/c/j;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Z

    move-result v3

    .line 42
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/common/a;

    move-result-object v4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/c;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/c;ZLcom/facebook/imagepipeline/common/a;Lcom/facebook/cache/common/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/request/a;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/a;->b()Lcom/facebook/cache/common/a;

    move-result-object v5

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 59
    :goto_0
    new-instance v0, Lcom/facebook/imagepipeline/c/c;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/c/j;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Z

    move-result v3

    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/common/a;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/c;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/c;ZLcom/facebook/imagepipeline/common/a;Lcom/facebook/cache/common/a;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v5, v6

    .line 57
    goto :goto_0
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/a;
    .locals 2
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/cache/common/d;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/c/j;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
