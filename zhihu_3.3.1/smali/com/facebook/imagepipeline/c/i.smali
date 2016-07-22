.class public Lcom/facebook/imagepipeline/c/i;
.super Ljava/lang/Object;
.source "DefaultBitmapMemoryCacheParamsSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Lcom/facebook/imagepipeline/c/q;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/i;->a:Landroid/app/ActivityManager;

    .line 31
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/i;->a:Landroid/app/ActivityManager;

    .line 45
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x10

    mul-int/2addr v0, v1

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 46
    const/high16 v1, 0x200

    if-ge v0, v1, :cond_0

    .line 47
    const/high16 v0, 0x40

    .line 56
    :goto_0
    return v0

    .line 48
    :cond_0
    const/high16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 49
    const/high16 v0, 0x60

    goto :goto_0

    .line 53
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    .line 54
    const/high16 v0, 0x80

    goto :goto_0

    .line 56
    :cond_2
    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/c/q;
    .locals 6

    .prologue
    const v3, 0x7fffffff

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/c/q;

    .line 36
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/i;->c()I

    move-result v1

    const/16 v2, 0x100

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/c/q;-><init>(IIIII)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/i;->a()Lcom/facebook/imagepipeline/c/q;

    move-result-object v0

    return-object v0
.end method
