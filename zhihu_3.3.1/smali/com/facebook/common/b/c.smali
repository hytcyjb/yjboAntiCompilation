.class public Lcom/facebook/common/b/c;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/b/b;


# static fields
.field private static a:Lcom/facebook/common/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/b/c;->a:Lcom/facebook/common/b/c;

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

.method public static declared-synchronized a()Lcom/facebook/common/b/c;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/facebook/common/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/b/c;->a:Lcom/facebook/common/b/c;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/common/b/c;

    invoke-direct {v0}, Lcom/facebook/common/b/c;-><init>()V

    sput-object v0, Lcom/facebook/common/b/c;->a:Lcom/facebook/common/b/c;

    .line 25
    :cond_0
    sget-object v0, Lcom/facebook/common/b/c;->a:Lcom/facebook/common/b/c;
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
.method public a(Lcom/facebook/common/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    return-void
.end method
