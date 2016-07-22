.class public Lcom/facebook/imagepipeline/common/a;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# static fields
.field private static final g:Lcom/facebook/imagepipeline/common/a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/common/a;->b()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/b;->g()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/common/a;->g:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

.method constructor <init>(Lcom/facebook/imagepipeline/common/b;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/a;->a:I

    .line 58
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/a;->b:I

    .line 59
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/a;->c:Z

    .line 60
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/a;->d:Z

    .line 61
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/a;->e:Z

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/a;->f:Z

    .line 63
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/a;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/imagepipeline/common/a;->g:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/imagepipeline/common/b;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 88
    :cond_3
    check-cast p1, Lcom/facebook/imagepipeline/common/a;

    .line 90
    iget v2, p0, Lcom/facebook/imagepipeline/common/a;->b:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/a;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 91
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/a;->c:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/a;->c:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 92
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/a;->d:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/a;->d:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 93
    :cond_6
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/a;->e:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/a;->e:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 94
    :cond_7
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/a;->f:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/a;->f:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/imagepipeline/common/a;->b:I

    .line 102
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 103
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "%d-%d-%b-%b-%b-%b"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/imagepipeline/common/a;->a:I

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/facebook/imagepipeline/common/a;->b:I

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/common/a;->c:Z

    .line 113
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/common/a;->d:Z

    .line 114
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/common/a;->e:Z

    .line 115
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/common/a;->f:Z

    .line 116
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
