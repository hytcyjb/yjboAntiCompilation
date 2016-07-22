.class public Lcom/facebook/imagepipeline/c/c;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.java"

# interfaces
.implements Lcom/facebook/cache/common/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/imagepipeline/common/c;

.field private final c:Z

.field private final d:Lcom/facebook/imagepipeline/common/a;

.field private final e:Lcom/facebook/cache/common/a;

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/c;ZLcom/facebook/imagepipeline/common/a;Lcom/facebook/cache/common/a;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/c;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/c;->b:Lcom/facebook/imagepipeline/common/c;

    .line 47
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/c/c;->c:Z

    .line 48
    iput-object p4, p0, Lcom/facebook/imagepipeline/c/c;->d:Lcom/facebook/imagepipeline/common/a;

    .line 49
    iput-object p5, p0, Lcom/facebook/imagepipeline/c/c;->e:Lcom/facebook/cache/common/a;

    .line 50
    iput-object p6, p0, Lcom/facebook/imagepipeline/c/c;->f:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/common/c;->hashCode()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p3, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/c;->d:Lcom/facebook/imagepipeline/common/a;

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->e:Lcom/facebook/cache/common/a;

    move-object v5, p6

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/c/c;->g:I

    .line 58
    return-void

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcom/facebook/imagepipeline/c/c;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/c/c;

    .line 66
    iget v1, p0, Lcom/facebook/imagepipeline/c/c;->g:I

    iget v2, p1, Lcom/facebook/imagepipeline/c/c;->g:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/c;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/c;->b:Lcom/facebook/imagepipeline/common/c;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/c;->b:Lcom/facebook/imagepipeline/common/c;

    .line 68
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/c/c;->c:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/c/c;->c:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/c;->d:Lcom/facebook/imagepipeline/common/a;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/c;->d:Lcom/facebook/imagepipeline/common/a;

    .line 70
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/c;->e:Lcom/facebook/cache/common/a;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/c;->e:Lcom/facebook/cache/common/a;

    .line 71
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/c;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/imagepipeline/c/c;->f:Ljava/lang/String;

    .line 72
    invoke-static {v1, v2}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/facebook/imagepipeline/c/c;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "%s_%s_%s_%s_%s_%s_%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->b:Lcom/facebook/imagepipeline/common/c;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/c/c;->c:Z

    .line 96
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->d:Lcom/facebook/imagepipeline/common/a;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->e:Lcom/facebook/cache/common/a;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/imagepipeline/c/c;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/facebook/imagepipeline/c/c;->g:I

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
