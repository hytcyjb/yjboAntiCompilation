.class Lcom/facebook/datasource/f$a;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "IncreasingQualityDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/f$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/AbstractDataSource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/f;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/datasource/b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/f;)V
    .locals 5
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/datasource/f$a;->a:Lcom/facebook/datasource/f;

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/facebook/datasource/f;->a(Lcom/facebook/datasource/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 97
    iput v2, p0, Lcom/facebook/datasource/f$a;->c:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 100
    invoke-static {p1}, Lcom/facebook/datasource/f;->a(Lcom/facebook/datasource/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/b;

    .line 101
    iget-object v3, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v3, Lcom/facebook/datasource/f$a$a;

    invoke-direct {v3, p0, v1}, Lcom/facebook/datasource/f$a$a;-><init>(Lcom/facebook/datasource/f$a;I)V

    invoke-static {}, Lcom/facebook/common/c/a;->a()Lcom/facebook/common/c/a;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/facebook/datasource/b;->a(Lcom/facebook/datasource/d;Ljava/util/concurrent/Executor;)V

    .line 105
    invoke-interface {v0}, Lcom/facebook/datasource/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 99
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private declared-synchronized a(I)Lcom/facebook/datasource/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ILcom/facebook/datasource/b;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-interface {p2}, Lcom/facebook/datasource/b;->b()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/datasource/f$a;->a(ILcom/facebook/datasource/b;Z)V

    .line 163
    invoke-direct {p0}, Lcom/facebook/datasource/f$a;->j()Lcom/facebook/datasource/b;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 164
    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcom/facebook/datasource/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/datasource/f$a;->a(Ljava/lang/Object;Z)Z

    .line 166
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILcom/facebook/datasource/b;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/b",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget v0, p0, Lcom/facebook/datasource/f$a;->c:I

    .line 183
    iget v1, p0, Lcom/facebook/datasource/f$a;->c:I

    .line 184
    invoke-direct {p0, p1}, Lcom/facebook/datasource/f$a;->a(I)Lcom/facebook/datasource/b;

    move-result-object v2

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/facebook/datasource/f$a;->c:I

    if-ne p1, v2, :cond_2

    .line 185
    :cond_0
    monitor-exit p0

    .line 202
    :cond_1
    return-void

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/facebook/datasource/f$a;->j()Lcom/facebook/datasource/b;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_4

    iget v2, p0, Lcom/facebook/datasource/f$a;->c:I

    if-ge p1, v2, :cond_4

    .line 195
    :cond_3
    iput p1, p0, Lcom/facebook/datasource/f$a;->c:I

    .line 197
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    if-le v0, p1, :cond_1

    .line 200
    invoke-direct {p0, v0}, Lcom/facebook/datasource/f$a;->b(I)Lcom/facebook/datasource/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/datasource/f$a;->a(Lcom/facebook/datasource/b;)V

    .line 199
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move p1, v1

    goto :goto_0
.end method

.method private a(Lcom/facebook/datasource/b;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-interface {p1}, Lcom/facebook/datasource/b;->h()Z

    .line 219
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/datasource/f$a;ILcom/facebook/datasource/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/f$a;->a(ILcom/facebook/datasource/b;)V

    return-void
.end method

.method private declared-synchronized b(I)Lcom/facebook/datasource/b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(ILcom/facebook/datasource/b;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/f$a;->c(ILcom/facebook/datasource/b;)Lcom/facebook/datasource/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/datasource/f$a;->a(Lcom/facebook/datasource/b;)V

    .line 170
    if-nez p1, :cond_0

    .line 171
    invoke-interface {p2}, Lcom/facebook/datasource/b;->f()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/f$a;->a(Ljava/lang/Throwable;)Z

    .line 173
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/datasource/f$a;ILcom/facebook/datasource/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/f$a;->b(ILcom/facebook/datasource/b;)V

    return-void
.end method

.method private declared-synchronized c(ILcom/facebook/datasource/b;)Lcom/facebook/datasource/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/b",
            "<TT;>;)",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/f$a;->j()Lcom/facebook/datasource/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 207
    const/4 p2, 0x0

    .line 212
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p2

    .line 209
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/f$a;->a(I)Lcom/facebook/datasource/b;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/facebook/datasource/f$a;->b(I)Lcom/facebook/datasource/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Lcom/facebook/datasource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/datasource/f$a;->c:I

    invoke-direct {p0, v0}, Lcom/facebook/datasource/f$a;->a(I)Lcom/facebook/datasource/b;
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


# virtual methods
.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/f$a;->j()Lcom/facebook/datasource/b;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/datasource/b;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/f$a;->j()Lcom/facebook/datasource/b;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/datasource/b;->d()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    monitor-enter p0

    .line 145
    :try_start_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    monitor-exit p0

    .line 156
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/datasource/f$a;->b:Ljava/util/ArrayList;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v2, :cond_1

    move v1, v0

    .line 152
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 153
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/b;

    invoke-direct {p0, v0}, Lcom/facebook/datasource/f$a;->a(Lcom/facebook/datasource/b;)V

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 156
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
