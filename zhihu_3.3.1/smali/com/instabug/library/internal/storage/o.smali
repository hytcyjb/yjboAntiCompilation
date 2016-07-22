.class public final Lcom/instabug/library/internal/storage/o;
.super Ljava/lang/Object;
.source "IssuesDataRepository.java"


# static fields
.field private static a:Lcom/instabug/library/internal/storage/o;


# instance fields
.field private b:Lcom/instabug/library/internal/storage/f;


# direct methods
.method private constructor <init>(Lcom/instabug/library/internal/storage/f;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/instabug/library/internal/storage/o;->b:Lcom/instabug/library/internal/storage/f;

    .line 21
    return-void
.end method

.method public static declared-synchronized a(Lcom/instabug/library/internal/storage/f;)Lcom/instabug/library/internal/storage/o;
    .locals 2
    .parameter

    .prologue
    .line 11
    const-class v1, Lcom/instabug/library/internal/storage/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instabug/library/internal/storage/o;->a:Lcom/instabug/library/internal/storage/o;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/instabug/library/internal/storage/o;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/storage/o;-><init>(Lcom/instabug/library/internal/storage/f;)V

    sput-object v0, Lcom/instabug/library/internal/storage/o;->a:Lcom/instabug/library/internal/storage/o;

    .line 14
    :cond_0
    sget-object v0, Lcom/instabug/library/internal/storage/o;->a:Lcom/instabug/library/internal/storage/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instabug/library/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/o;->b:Lcom/instabug/library/internal/storage/f;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/f;->a()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/instabug/library/e/a;Lcom/instabug/library/internal/storage/d$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/storage/o;->b:Lcom/instabug/library/internal/storage/f;

    new-instance v1, Lcom/instabug/library/internal/storage/p;

    invoke-direct {v1, p0, p2}, Lcom/instabug/library/internal/storage/p;-><init>(Lcom/instabug/library/internal/storage/o;Lcom/instabug/library/internal/storage/d$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/instabug/library/internal/storage/f;->b(Lcom/instabug/library/e/a;Lcom/instabug/library/internal/storage/d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
