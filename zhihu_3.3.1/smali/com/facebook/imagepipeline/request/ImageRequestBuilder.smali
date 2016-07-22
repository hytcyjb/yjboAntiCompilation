.class public Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
.super Ljava/lang/Object;
.source "ImageRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private c:Z

.field private d:Lcom/facebook/imagepipeline/common/c;

.field private e:Lcom/facebook/imagepipeline/common/a;

.field private f:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

.field private g:Z

.field private h:Z

.field private i:Lcom/facebook/imagepipeline/common/Priority;

.field private j:Lcom/facebook/imagepipeline/request/a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    .line 31
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 32
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Z

    .line 33
    iput-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/c;

    .line 34
    invoke-static {}, Lcom/facebook/imagepipeline/common/a;->a()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/a;

    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 36
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    .line 37
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 39
    iput-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/a;

    .line 94
    return-void
.end method

.method public static a(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 2
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "res"

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 1
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/request/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 226
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/a;

    .line 161
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/c;

    .line 151
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    .line 176
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 121
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/request/a;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/a;

    .line 240
    return-object p0
.end method

.method public a(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Z

    .line 136
    return-object p0
.end method

.method public b()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    .line 106
    return-object p0
.end method

.method public b(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    .line 191
    return-object p0
.end method

.method public c(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    .line 206
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:Z

    return v0
.end method

.method public d()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/c;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/common/a;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public j()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/request/a;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/request/a;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m()V

    .line 254
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/request/ImageRequest;-><init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V

    return-object v0
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Source must be set!"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/d;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI must not be empty"

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/d;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Asset URI path must be absolute."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;

    const-string v1, "Resource URI path must be a resource id."

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder$BuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    return-void
.end method
