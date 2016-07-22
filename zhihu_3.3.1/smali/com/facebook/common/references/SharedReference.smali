.class public Lcom/facebook/common/references/SharedReference;
.super Ljava/lang/Object;
.source "SharedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/SharedReference$NullReferenceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Lcom/facebook/common/references/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/c;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/SharedReference;->b:Ljava/lang/Object;

    .line 122
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/c;

    iput-object v0, p0, Lcom/facebook/common/references/SharedReference;->d:Lcom/facebook/common/references/c;

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->c:I

    .line 124
    invoke-static {p1}, Lcom/facebook/common/references/SharedReference;->a(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    sget-object v1, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_0
    monitor-exit v1

    .line 142
    return-void

    .line 139
    :cond_0
    sget-object v2, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/facebook/common/references/SharedReference;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/SharedReference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 151
    sget-object v1, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 153
    if-nez v0, :cond_0

    .line 155
    const-string v0, "SharedReference"

    const-string v2, "No entry in sLiveObjects for value of type %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 155
    invoke-static {v0, v2, v3}, Lcom/facebook/common/d/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_0
    monitor-exit v1

    .line 165
    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 160
    sget-object v0, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 162
    :cond_1
    :try_start_1
    sget-object v2, Lcom/facebook/common/references/SharedReference;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized e()I
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->f()V

    .line 222
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 224
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->c:I

    .line 225
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 233
    invoke-static {p0}, Lcom/facebook/common/references/SharedReference;->a(Lcom/facebook/common/references/SharedReference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/facebook/common/references/SharedReference$NullReferenceException;

    invoke-direct {v0}, Lcom/facebook/common/references/SharedReference$NullReferenceException;-><init>()V

    throw v0

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->f()V

    .line 197
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->b:Ljava/lang/Object;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/common/references/SharedReference;->b:Ljava/lang/Object;

    .line 210
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v1, p0, Lcom/facebook/common/references/SharedReference;->d:Lcom/facebook/common/references/c;

    invoke-interface {v1, v0}, Lcom/facebook/common/references/c;->a(Ljava/lang/Object;)V

    .line 212
    invoke-static {v0}, Lcom/facebook/common/references/SharedReference;->b(Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
