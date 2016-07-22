.class public Lcom/facebook/drawee/a/a/b;
.super Lcom/facebook/drawee/b/a;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/b/a",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;",
        "Lcom/facebook/imagepipeline/f/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/facebook/imagepipeline/animated/a/a;

.field private d:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/drawee/a/a/b;

    sput-object v0, Lcom/facebook/drawee/a/a/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/animated/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/common/internal/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lcom/facebook/imagepipeline/animated/a/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p2, p4, p6, p7}, Lcom/facebook/drawee/b/a;-><init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/facebook/drawee/a/a/b;->b:Landroid/content/res/Resources;

    .line 65
    iput-object p3, p0, Lcom/facebook/drawee/a/a/b;->c:Lcom/facebook/imagepipeline/animated/a/a;

    .line 66
    invoke-direct {p0, p5}, Lcom/facebook/drawee/a/a/b;->a(Lcom/facebook/common/internal/i;)V

    .line 67
    return-void
.end method

.method private a(Lcom/facebook/common/internal/i;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/drawee/a/a/b;->d:Lcom/facebook/common/internal/i;

    .line 87
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/f/c;

    .line 105
    instance-of v1, v0, Lcom/facebook/imagepipeline/f/d;

    if-eqz v1, :cond_2

    .line 106
    check-cast v0, Lcom/facebook/imagepipeline/f/d;

    .line 107
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/facebook/drawee/a/a/b;->b:Landroid/content/res/Resources;

    .line 109
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/d;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/d;->f()I

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/d;->f()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_1
    new-instance v1, Lcom/facebook/drawee/drawable/i;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/d;->f()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/drawee/drawable/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v0, v1

    goto :goto_0

    .line 116
    :cond_2
    instance-of v1, v0, Lcom/facebook/imagepipeline/f/a;

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/facebook/drawee/a/a/b;->c:Lcom/facebook/imagepipeline/animated/a/a;

    check-cast v0, Lcom/facebook/imagepipeline/f/a;

    .line 118
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/f/a;->d()Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/animated/a/a;->a(Lcom/facebook/imagepipeline/animated/base/j;)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized image class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a()Lcom/facebook/datasource/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/facebook/drawee/a/a/b;->a:Ljava/lang/Class;

    const-string v1, "controller %x: getDataSource"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/a/a/b;->d:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/b;

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    instance-of v0, p1, Lcom/facebook/b/a/a;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/facebook/b/a/a;

    invoke-interface {p1}, Lcom/facebook/b/a/a;->a()V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/common/internal/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p2, p3}, Lcom/facebook/drawee/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/drawee/a/a/b;->a(Lcom/facebook/common/internal/i;)V

    .line 83
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/b;->d(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/b;->c(Lcom/facebook/common/references/a;)I

    move-result v0

    return v0
.end method

.method protected b(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/f/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/f/f;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/f/f;

    return-object v0
.end method

.method protected c(Lcom/facebook/common/references/a;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/b;->b(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/f/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/a/a/b;->a(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/facebook/common/references/a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Lcom/facebook/common/internal/f;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "super"

    .line 150
    invoke-super {p0}, Lcom/facebook/drawee/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    const-string v1, "dataSourceSupplier"

    iget-object v2, p0, Lcom/facebook/drawee/a/a/b;->d:Lcom/facebook/common/internal/i;

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/f$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/facebook/common/internal/f$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
