.class public Lcom/facebook/imagepipeline/memory/f;
.super Ljava/lang/Object;
.source "DefaultBitmapPoolParams.java"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/facebook/imagepipeline/memory/f;->a:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/memory/t;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/imagepipeline/memory/t;

    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/facebook/imagepipeline/memory/f;->b()I

    move-result v2

    sget-object v3, Lcom/facebook/imagepipeline/memory/f;->a:Landroid/util/SparseIntArray;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/t;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v0
.end method

.method private static b()I
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 36
    const/high16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 37
    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 39
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
