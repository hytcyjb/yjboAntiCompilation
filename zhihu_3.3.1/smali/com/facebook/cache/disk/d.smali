.class public Lcom/facebook/cache/disk/d;
.super Ljava/lang/Object;
.source "DiskCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/f;
    .locals 9
    .parameter

    .prologue
    .line 21
    invoke-static {p0}, Lcom/facebook/cache/disk/d;->b(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/g;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/facebook/cache/disk/f$b;

    .line 23
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->f()J

    move-result-wide v2

    .line 24
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->e()J

    move-result-wide v4

    .line 25
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/facebook/cache/disk/f$b;-><init>(JJJ)V

    .line 26
    new-instance v2, Lcom/facebook/cache/disk/f;

    .line 28
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->g()Lcom/facebook/cache/disk/i;

    move-result-object v4

    .line 30
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->i()Lcom/facebook/cache/common/CacheEventListener;

    move-result-object v6

    .line 31
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->h()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v7

    .line 32
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->j()Lcom/facebook/common/b/b;

    move-result-object v8

    move-object v3, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/cache/disk/f;-><init>(Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/i;Lcom/facebook/cache/disk/f$b;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lcom/facebook/common/b/b;)V

    return-object v2
.end method

.method private static b(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/g;
    .locals 5
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/cache/disk/a;

    .line 37
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->a()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->c()Lcom/facebook/common/internal/i;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c;->h()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/cache/disk/a;-><init>(ILcom/facebook/common/internal/i;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V

    return-object v0
.end method
