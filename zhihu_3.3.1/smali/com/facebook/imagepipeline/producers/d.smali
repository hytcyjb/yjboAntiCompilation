.class public Lcom/facebook/imagepipeline/producers/d;
.super Ljava/lang/Object;
.source "BaseProducerContext.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ah;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/imagepipeline/producers/aj;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private f:Z

.field private g:Lcom/facebook/imagepipeline/common/Priority;

.field private h:Z

.field private i:Z

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/d;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 52
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/d;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/d;->c:Lcom/facebook/imagepipeline/producers/aj;

    .line 54
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/d;->d:Ljava/lang/Object;

    .line 55
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/d;->e:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 57
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/d;->f:Z

    .line 58
    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/d;->g:Lcom/facebook/imagepipeline/common/Priority;

    .line 59
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/d;->h:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->i:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ai;

    .line 213
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ai;->a()V

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    if-nez p0, :cond_1

    .line 228
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ai;

    .line 226
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ai;->b()V

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    if-nez p0, :cond_1

    .line 242
    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ai;

    .line 240
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ai;->c()V

    goto :goto_0
.end method

.method public static d(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    if-nez p0, :cond_1

    .line 254
    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ai;

    .line 252
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ai;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->g:Lcom/facebook/imagepipeline/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    monitor-exit p0

    return-object v0

    .line 163
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/d;->g:Lcom/facebook/imagepipeline/common/Priority;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v0

    .line 145
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/d;->f:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/d;->i:Z

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ai;->a()V

    .line 122
    :cond_1
    return-void

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(Z)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    monitor-exit p0

    return-object v0

    .line 182
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/d;->h:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/facebook/imagepipeline/producers/aj;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->c:Lcom/facebook/imagepipeline/producers/aj;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->e:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/d;->g:Lcom/facebook/imagepipeline/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/d;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/d;->a(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public declared-synchronized j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/producers/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    .line 200
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/d;->i:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/d;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
