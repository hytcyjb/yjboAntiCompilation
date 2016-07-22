.class public Lcom/facebook/cache/common/b;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheErrorLogger;


# static fields
.field private static a:Lcom/facebook/cache/common/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/cache/common/b;->a:Lcom/facebook/cache/common/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/cache/common/b;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/facebook/cache/common/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/cache/common/b;->a:Lcom/facebook/cache/common/b;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/facebook/cache/common/b;

    invoke-direct {v0}, Lcom/facebook/cache/common/b;-><init>()V

    sput-object v0, Lcom/facebook/cache/common/b;->a:Lcom/facebook/cache/common/b;

    .line 27
    :cond_0
    sget-object v0, Lcom/facebook/cache/common/b;->a:Lcom/facebook/cache/common/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
