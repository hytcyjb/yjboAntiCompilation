.class Lcom/facebook/imagepipeline/memory/BasePool$a;
.super Ljava/lang/Object;
.source "BasePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 738
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    .line 739
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    .line 740
    return-void
.end method

.method public b(I)V
    .locals 5
    .parameter

    .prologue
    .line 747
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    if-lez v0, :cond_0

    .line 748
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    .line 749
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    .line 758
    :goto_0
    return-void

    .line 751
    :cond_0
    const-string v0, "com.facebook.imagepipeline.common.BasePool.Counter"

    const-string v1, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 754
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->b:I

    .line 755
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/facebook/imagepipeline/memory/BasePool$a;->a:I

    .line 756
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 751
    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
