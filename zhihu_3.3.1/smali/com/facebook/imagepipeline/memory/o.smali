.class public Lcom/facebook/imagepipeline/memory/o;
.super Ljava/lang/Object;
.source "NoOpPoolStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/u;


# static fields
.field private static a:Lcom/facebook/imagepipeline/memory/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/imagepipeline/memory/o;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/facebook/imagepipeline/memory/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/o;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/memory/o;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/o;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/o;

    .line 25
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    return-void
.end method
