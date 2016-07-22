.class public Lcom/facebook/imagepipeline/f/d;
.super Lcom/facebook/imagepipeline/f/b;
.source "CloseableStaticBitmap.java"


# instance fields
.field private a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Landroid/graphics/Bitmap;

.field private final c:Lcom/facebook/imagepipeline/f/h;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/c;Lcom/facebook/imagepipeline/f/h;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/c",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/f/h;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/b;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;

    .line 50
    iget-object v1, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;

    .line 52
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/c;

    .line 50
    invoke-static {v1, v0}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;

    .line 53
    iput-object p3, p0, Lcom/facebook/imagepipeline/f/d;->c:Lcom/facebook/imagepipeline/f/h;

    .line 54
    iput p4, p0, Lcom/facebook/imagepipeline/f/d;->d:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/f/h;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/f/h;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/b;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->c()Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;

    .line 69
    iput-object p2, p0, Lcom/facebook/imagepipeline/f/d;->c:Lcom/facebook/imagepipeline/f/h;

    .line 70
    iput p3, p0, Lcom/facebook/imagepipeline/f/d;->d:I

    .line 71
    return-void
.end method

.method private declared-synchronized g()Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->a:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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

.method public b()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/c/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/d;->g()Lcom/facebook/common/references/a;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 82
    :cond_0
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/f/h;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/d;->c:Lcom/facebook/imagepipeline/f/h;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/facebook/imagepipeline/f/d;->d:I

    return v0
.end method
