.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
    }
.end annotation


# instance fields
.field a:Lcom/facebook/imagepipeline/common/c;

.field private final b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

.field private final c:Landroid/net/Uri;

.field private d:Ljava/io/File;

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/facebook/imagepipeline/common/a;

.field private final h:Z

.field private final i:Lcom/facebook/imagepipeline/common/Priority;

.field private final j:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final k:Z

.field private final l:Lcom/facebook/imagepipeline/request/a;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    .line 76
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    .line 79
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    .line 80
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 82
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lcom/facebook/imagepipeline/common/a;

    .line 84
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d()Lcom/facebook/imagepipeline/common/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    .line 85
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 87
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 88
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 89
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Z

    .line 91
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k()Lcom/facebook/imagepipeline/request/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/a;

    .line 92
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .parameter

    .prologue
    .line 68
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .parameter

    .prologue
    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    iget v0, v0, Lcom/facebook/imagepipeline/common/c;->a:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    iget v0, v0, Lcom/facebook/imagepipeline/common/c;->b:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method public e()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/common/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    instance-of v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 159
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 160
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    .line 161
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Lcom/facebook/imagepipeline/common/a;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/f;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    return v0
.end method

.method public j()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Z

    return v0
.end method

.method public declared-synchronized m()Ljava/io/File;
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Lcom/facebook/imagepipeline/request/a;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/a;

    return-object v0
.end method
